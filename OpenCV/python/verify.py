import os
import json

# 1. Check generated directory structure
print("Generated Files in Output Directory:")
for root, dirs, files in os.walk("./output_weights"):
    level = root.replace("./output_weights", "").count(os.sep)
    indent = " " * 4 * level
    print(f"{indent}{os.path.basename(root)}/")
    subindent = " " * 4 * (level + 1)
    for f in files[:3]:  # Print first 3 files per dir
        print(f"{subindent}{f}")
    if len(files) > 3:
        print(f"{subindent}... ({len(files) - 3} more files)")

# 2. Inspect sample .mem contents for Character 'A'
mem_sample_path = "./output_weights/mem_files/trans_matrix_A.mem"
if os.path.exists(mem_sample_path):
    with open(mem_sample_path, "r") as f:
        ram_vals = [line.strip() for line in f.readlines()]
    print(f"\nSample Hex BRAM Data (trans_matrix_A.mem, total words = {len(ram_vals)}):")
    print(ram_vals[:5])
