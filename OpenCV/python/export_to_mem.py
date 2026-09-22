"""
export_to_mem.py

Takes the trained Keras model and writes each layer's weights/biases out
as fixed-point .mem files for FPGA BRAM initialization ($readmemh), plus
a metadata.json that records exact shapes, flatten order, and the
quantization format used -- you need these numbers to write correct
address decoding / MAC scaling in your RTL.

Usage:
    python export_to_mem.py --model model/emnist_cnn.keras --out-dir mem_weights \
        --total-bits 8 --frac-bits 7

Output layout:
    mem_weights/
        00_conv2d_kernel.mem
        00_conv2d_bias.mem
        01_conv2d_1_kernel.mem
        01_conv2d_1_bias.mem
        02_conv2d_2_kernel.mem
        02_conv2d_2_bias.mem
        03_dense_kernel.mem
        03_dense_bias.mem
        04_dense_1_kernel.mem
        04_dense_1_bias.mem
        05_dense_2_kernel.mem
        05_dense_2_bias.mem
        metadata.json
"""

import argparse
import json
import os

import numpy as np
import tensorflow as tf

from quantize import FixedPointFormat, write_mem_file, max_abs_error


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="model/emnist_cnn.keras")
    ap.add_argument("--out-dir", default="mem_weights")
    ap.add_argument("--total-bits", type=int, default=8,
                     help="Total bits per stored value (weight/bias word width).")
    ap.add_argument("--frac-bits", type=int, default=7,
                     help="Fractional bits (Q format). total_bits - frac_bits = integer/sign bits.")
    args = ap.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)
    fmt = FixedPointFormat(total_bits=args.total_bits, frac_bits=args.frac_bits)

    model = tf.keras.models.load_model(args.model)

    layers_meta = []
    layer_idx = 0
    for layer in model.layers:
        weights = layer.get_weights()
        if not weights:
            continue  # skip MaxPool/Flatten/Dropout - no learnable params

        kernel, bias = weights[0], weights[1]
        prefix = f"{layer_idx:02d}_{layer.name}"

        kernel_path = os.path.join(args.out_dir, f"{prefix}_kernel.mem")
        bias_path = os.path.join(args.out_dir, f"{prefix}_bias.mem")

        kernel_err = max_abs_error(kernel, fmt)
        bias_err = max_abs_error(bias, fmt)

        write_mem_file(
            kernel_path, kernel, fmt,
            header_comment=f"layer={layer.name} tensor=kernel shape={list(kernel.shape)} "
                            f"order=C(row-major) format=Q{fmt.int_bits}.{fmt.frac_bits} "
                            f"max_abs_quant_error={kernel_err:.6f}",
        )
        write_mem_file(
            bias_path, bias, fmt,
            header_comment=f"layer={layer.name} tensor=bias shape={list(bias.shape)} "
                            f"order=C(row-major) format=Q{fmt.int_bits}.{fmt.frac_bits} "
                            f"max_abs_quant_error={bias_err:.6f}",
        )

        layers_meta.append({
            "index": layer_idx,
            "name": layer.name,
            "type": layer.__class__.__name__,
            "kernel_shape": list(kernel.shape),
            "bias_shape": list(bias.shape),
            "kernel_file": os.path.basename(kernel_path),
            "bias_file": os.path.basename(bias_path),
            "kernel_max_abs_quant_error": kernel_err,
            "bias_max_abs_quant_error": bias_err,
            "activation": getattr(layer, "activation", None).__name__
            if getattr(layer, "activation", None) else None,
        })

        print(f"[{layer_idx:02d}] {layer.name:12s} kernel={kernel.shape} bias={bias.shape} "
              f"max_quant_err(kernel)={kernel_err:.5f}")
        layer_idx += 1

    metadata = {
        "quantization": {
            "total_bits": fmt.total_bits,
            "frac_bits": fmt.frac_bits,
            "int_bits": fmt.int_bits,
            "format": f"Q{fmt.int_bits}.{fmt.frac_bits}",
            "scale": fmt.scale,
            "signed": True,
            "encoding": "two's complement hex, one value per line, for $readmemh",
        },
        "flatten_order": "C (row-major): last axis varies fastest",
        "input_shape": [28, 28, 1],
        "num_classes": model.output_shape[-1],
        "layers": layers_meta,
    }
    meta_path = os.path.join(args.out_dir, "metadata.json")
    with open(meta_path, "w") as f:
        json.dump(metadata, f, indent=2)

    print(f"\nWrote {len(layers_meta)} layers' weights to {args.out_dir}/")
    print(f"Metadata: {meta_path}")
    print("\nNOTE: max_abs_quant_error tells you the worst single-value rounding error "
          "introduced by this bit width. If it looks too large relative to your weight "
          "range, increase --frac-bits (finer step) or --total-bits (wider range).")


if __name__ == "__main__":
    main()
