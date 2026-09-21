# generate_codebook.py

# Path where Vivado expects codebook.mem
output_path = "/mnt/d/College/Projects/VLSI_Project/Softwares/output/vivado/vector/codebook.mem"

# 6-bit feature index -> 64 total addresses (0 to 63)
NUM_ENTRIES = 64 

with open(output_path, "w") as f:
    for feature_idx in range(NUM_ENTRIES):
        # Quantizes 64 feature indices down to 16 discrete HMM symbols (0 to 15)
        hmm_symbol = feature_idx // 4  
        # Write as single-digit hex string (0, 1, ..., E, F)
        f.write(f"{hmm_symbol:X}\n")

print(f"Successfully generated codebook.mem at {output_path}")
