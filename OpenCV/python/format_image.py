import argparse
import sys
import cv2
import numpy as np

# -------------------------------------------------------------------------
# Hardware Quantization Configuration (RESTORED: ap_fixed<16,6>)
# -------------------------------------------------------------------------
TOTAL_BITS = 16
MODEL_BITS = 16       # Changed from 14 back to 16
INTEGER_BITS = 6      # Changed from 5 back to 6
FRACTIONAL_BITS = MODEL_BITS - INTEGER_BITS  # Now evaluates to 10 bits (scale = 1024)

def preprocess_and_export(
    image_path: str,
    output_prefix: str = "emnist_input",
    transpose: bool = False,
    normalize_signed: bool = True,
    invert: bool = True,
):
    # 1. Load image in grayscale
    img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
    if img is None:
        print(f"Error: Unable to load image from '{image_path}'")
        sys.exit(1)

    # 2. Otsu's thresholding
    # EMNIST expects a white glyph on a black background.
    # If input is black text on a white page, invert it. If already white on black, do not invert.
    thresh_mode = cv2.THRESH_BINARY_INV if invert else cv2.THRESH_BINARY
    _, img_thresh = cv2.threshold(img, 0, 255, thresh_mode + cv2.THRESH_OTSU)

    # 3. Resize to 28x28
    img_resized = cv2.resize(img_thresh, (28, 28), interpolation=cv2.INTER_AREA)

    # Apply transpose if required to match EMNIST dataset rotation
    if transpose:
        img_resized = img_resized.T

    # Save visual verification image
    debug_filename = f"{output_prefix}_debug.png"
    cv2.imwrite(debug_filename, img_resized)
    print(f"Saved visual check image: {debug_filename}")

    # 4. Normalization
    img_float = img_resized.astype(np.float32) / 255.0
    if normalize_signed:
        img_norm = (img_float - 0.5) / 0.5
    else:
        img_norm = img_float

    # 5. Fixed-Point Quantization
    scale = 2**FRACTIONAL_BITS
    min_val = -(2 ** (MODEL_BITS - 1))
    max_val = (2 ** (MODEL_BITS - 1)) - 1

    img_scaled = np.round(img_norm * scale).astype(np.int32)
    img_clamped = np.clip(img_scaled, min_val, max_val)

    flat_data = img_clamped.flatten()

    hex_values = []
    for val in flat_data:
        if val < 0:
            val = (1 << TOTAL_BITS) + val
        val = val & 0xFFFF
        hex_values.append(format(val, "04X"))

    # 6. Export Vivado BRAM COE File (.coe)
    coe_filename = f"{output_prefix}.coe"
    with open(coe_filename, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        for i, h in enumerate(hex_values):
            terminator = ";\n" if i == len(hex_values) - 1 else ",\n"
            f.write(f"{h}{terminator}")
    print(f"Generated Vivado COE file: {coe_filename}")

    # 7. Export Verilog Simulation / Memory File (.mem)
    mem_filename = f"{output_prefix}.mem"
    with open(mem_filename, "w") as f:
        for h in hex_values:
            f.write(f"{h}\n")
    print(f"Generated Verilog MEM file: {mem_filename}")

    # 8. Export C++ Testbench Feature File (.dat)
    dat_filename = f"{output_prefix}_features.dat"
    with open(dat_filename, "w") as f:
        float_strs = [str(val) for val in img_norm.flatten()]
        f.write(" ".join(float_strs) + "\n")
    print(f"Generated C++ Testbench dat file: {dat_filename}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Convert input image into Vivado .coe, Verilog .mem, and C++ .dat formats."
    )
    parser.add_argument("image", help="Path to input image file (.png, .jpg)")
    parser.add_argument("--output-prefix", default="emnist_input", help="Base name for output files")
    parser.add_argument("--transpose", action="store_true", help="Transpose image matrix (.T)")
    parser.add_argument("--zero-one", action="store_true", help="Use [0.0, 1.0] normalization")
    parser.add_argument("--no-invert", action="store_true", help="Do NOT invert colors (use if input is already white-on-black)")

    args = parser.parse_args()

    preprocess_and_export(
        image_path=args.image,
        output_prefix=args.output_prefix,
        transpose=args.transpose,
        normalize_signed=not args.zero_one,
        invert=not args.no_invert,
    )
