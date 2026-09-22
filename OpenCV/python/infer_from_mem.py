"""
infer_from_mem.py

Reconstructs the CNN's forward pass in plain NumPy, reading weights back
from the quantized .mem files (not the original Keras model). This lets
you check "does the quantized model still get the right answer?" on your
laptop before you ever touch the FPGA -- if this script's prediction
disagrees with predict.py's (full-precision) prediction, your bit width
is too narrow and you should re-export with more --frac-bits/--total-bits.

Usage:
    python infer_from_mem.py --mem-dir mem_weights --image my_letter.jpg

This is a *numerical* fixed-point verification (dequantized float math),
not a cycle-accurate hardware model -- it confirms the quantized weight
values are good enough, it does not simulate your RTL's datapath.
"""

import argparse
import json
import os

import numpy as np

from preprocess import load_and_preprocess, CHARACTERS
from quantize import FixedPointFormat, dequantize


def read_mem_file(path: str, fmt: FixedPointFormat, shape) -> np.ndarray:
    ints = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("//"):
                continue
            v = int(line, 16)
            if v >= (1 << (fmt.total_bits - 1)):  # sign-extend
                v -= (1 << fmt.total_bits)
            ints.append(v)
    arr = np.array(ints, dtype=np.int64).reshape(shape, order="C")
    return dequantize(arr, fmt)


def relu(x):
    return np.maximum(x, 0)


def softmax(x):
    e = np.exp(x - np.max(x))
    return e / e.sum()


def conv2d(x, kernel, bias, padding="valid"):
    # x: (H, W, Cin), kernel: (kh, kw, Cin, Cout)
    kh, kw, cin, cout = kernel.shape
    if padding == "same":
        ph, pw = kh // 2, kw // 2
        x = np.pad(x, ((ph, ph), (pw, pw), (0, 0)))
    H, W, _ = x.shape
    out_h, out_w = H - kh + 1, W - kw + 1
    out = np.zeros((out_h, out_w, cout), dtype=np.float64)
    for i in range(out_h):
        for j in range(out_w):
            patch = x[i:i + kh, j:j + kw, :]  # (kh, kw, cin)
            out[i, j, :] = np.tensordot(patch, kernel, axes=([0, 1, 2], [0, 1, 2])) + bias
    return out


def maxpool2x2(x):
    H, W, C = x.shape
    H2, W2 = H // 2, W // 2
    x = x[:H2 * 2, :W2 * 2, :]
    return x.reshape(H2, 2, W2, 2, C).max(axis=(1, 3))


def dense(x, kernel, bias):
    return x @ kernel + bias  # kernel shape (in, out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mem-dir", default="mem_weights")
    ap.add_argument("--image", required=True)
    ap.add_argument("--threshold", type=int, default=100)
    args = ap.parse_args()

    with open(os.path.join(args.mem_dir, "metadata.json")) as f:
        meta = json.load(f)

    fmt = FixedPointFormat(total_bits=meta["quantization"]["total_bits"],
                            frac_bits=meta["quantization"]["frac_bits"])

    layers = {}
    for L in meta["layers"]:
        kernel = read_mem_file(os.path.join(args.mem_dir, L["kernel_file"]), fmt, L["kernel_shape"])
        bias = read_mem_file(os.path.join(args.mem_dir, L["bias_file"]), fmt, L["bias_shape"])
        layers[L["name"]] = (kernel, bias, L["type"], L["activation"])

    x = load_and_preprocess(args.image, bw_threshold=args.threshold)[0]  # (28,28,1)

    ordered = sorted(meta["layers"], key=lambda l: l["index"])
    names = [L["name"] for L in ordered]

    # Architecture is fixed (matches train.py): conv/pool x3, dropout, flatten, dense x3
    k, b, _, act = layers[names[0]]
    x = relu(conv2d(x, k, b, padding="same"))
    x = maxpool2x2(x)

    k, b, _, act = layers[names[1]]
    x = relu(conv2d(x, k, b, padding="valid"))
    x = maxpool2x2(x)

    k, b, _, act = layers[names[2]]
    x = relu(conv2d(x, k, b, padding="valid"))
    x = maxpool2x2(x)

    x = x.flatten(order="C")

    k, b, _, act = layers[names[3]]
    x = relu(dense(x, k, b))

    k, b, _, act = layers[names[4]]
    x = relu(dense(x, k, b))

    k, b, _, act = layers[names[5]]
    logits = dense(x, k, b)
    probs = softmax(logits)

    top5 = np.argsort(probs)[::-1][:5]
    print(f"Quantized-model ({meta['quantization']['format']}) top-5 predictions:")
    for idx in top5:
        print(f"  {CHARACTERS[idx]:>2}  {probs[idx] * 100:6.2f}%")
    print(f"\nQuantized-model predicted character: {CHARACTERS[int(np.argmax(probs))]}")


if __name__ == "__main__":
    main()
