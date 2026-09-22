"""
quantize.py

Fixed-point quantization + .mem file writer for FPGA weight loading.

No TensorFlow dependency here on purpose, so this logic can be tested
in isolation from the (heavy) training stack.

Fixed-point format used: signed QI.F
    total_bits = I + F  (I includes the sign bit)
    value_int  = round(value_float * 2**F)
    clipped to the representable range of `total_bits`
    stored as two's-complement hex, one value per line, for $readmemh.

Defaults: 8-bit weights (Q1.7 -> range [-1, 0.9921875], step 1/128), which
is a common LUT/BRAM-friendly choice for small CNNs on resource-limited
FPGAs. Override --total-bits / --frac-bits on the CLI for a different
format (e.g. 16-bit Q8.8 if you need more headroom for pre-activation sums).
"""

from dataclasses import dataclass
import numpy as np


@dataclass
class FixedPointFormat:
    total_bits: int = 8
    frac_bits: int = 7

    @property
    def int_bits(self) -> int:
        return self.total_bits - self.frac_bits

    @property
    def scale(self) -> float:
        return 2 ** self.frac_bits

    @property
    def min_int(self) -> int:
        return -(2 ** (self.total_bits - 1))

    @property
    def max_int(self) -> int:
        return 2 ** (self.total_bits - 1) - 1

    @property
    def hex_digits(self) -> int:
        return (self.total_bits + 3) // 4


def quantize(values: np.ndarray, fmt: FixedPointFormat) -> np.ndarray:
    """Float array -> int array of two's-complement values in [min_int, max_int]."""
    scaled = np.round(values.astype(np.float64) * fmt.scale)
    clipped = np.clip(scaled, fmt.min_int, fmt.max_int)
    return clipped.astype(np.int64)


def dequantize(int_values: np.ndarray, fmt: FixedPointFormat) -> np.ndarray:
    """Inverse of quantize(): int array -> float array."""
    return int_values.astype(np.float64) / fmt.scale


def to_twos_complement_hex(int_values: np.ndarray, fmt: FixedPointFormat):
    """Yield zero-padded hex strings (no '0x' prefix) for $readmemh."""
    mask = (1 << fmt.total_bits) - 1
    for v in int_values.flatten(order="C"):
        as_unsigned = int(v) & mask
        yield format(as_unsigned, f"0{fmt.hex_digits}x")


def write_mem_file(path: str, values: np.ndarray, fmt: FixedPointFormat,
                    header_comment: str = None):
    """
    Write a Verilog-readable .mem file: one hex value per line, MSB-first
    two's complement, flattened in C (row-major) order.

    Verilog side:
        reg [TOTAL_BITS-1:0] mem [0:N-1];
        initial $readmemh("this_file.mem", mem);
    """
    with open(path, "w") as f:
        if header_comment:
            for line in header_comment.strip().splitlines():
                f.write(f"// {line}\n")
        for hex_str in to_twos_complement_hex(quantize(values, fmt), fmt):
            f.write(hex_str + "\n")


def max_abs_error(values: np.ndarray, fmt: FixedPointFormat) -> float:
    """Quick sanity metric: worst-case rounding error introduced by quantizing."""
    q = quantize(values, fmt)
    dq = dequantize(q, fmt)
    return float(np.max(np.abs(values - dq)))
