import os
import json
import joblib
import numpy as np
from hmmlearn import hmm
import sklearn.datasets # Fallback dummy generator if emnist is not installed

# ==========================================
# 1. Pipeline Configuration
# ==========================================
CONFIG = {
    "num_states": 5,
    "num_features": 4,
    "q_scale": 256,         # Q8.8 fixed-point format (2^8 = 256)
    "prob_floor": 1e-12,     # Zero-probability floor before log2
    "n_classes": 26,         # 26 upper-case EMNIST character classes ('A'-'Z')
    "n_samples_per_class": 100
}

OUTPUT_DIR = "./output_weights"
MEM_SUBDIR = os.path.join(OUTPUT_DIR, "mem_files")

CLASSES = [chr(i) for i in range(ord('A'), ord('A') + CONFIG["n_classes"])]

# ==========================================
# 2. Fixed-Point & Quantization Helpers
# ==========================================
def float_to_fixed_log(prob_matrix, scale=256, floor=1e-12):
    """
    Converts probabilities to Q8.8 fixed-point log-domain costs:
    Cost = -log2(P) * 256
    """
    clipped = np.clip(prob_matrix, floor, 1.0)
    log_costs = -np.log2(clipped) * scale
    fixed_costs = np.round(log_costs).astype(np.uint16)
    return fixed_costs

def create_left_to_right_mask(n_states):
    """
    Generates left-to-right topology: self-loops and single-step forward jumps only.
    """
    start_prob = np.zeros(n_states)
    start_prob[0] = 1.0  # Force start at State 0

    trans_mat = np.zeros((n_states, n_states))
    for i in range(n_states):
        if i < n_states - 1:
            trans_mat[i, i] = 0.5
            trans_mat[i, i + 1] = 0.5
        else:
            trans_mat[i, i] = 1.0  # Terminal state self-loop

    return start_prob, trans_mat

# ==========================================
# 3. Dummy Data Generator (Replace with EMNIST)
# ==========================================
def load_emnist_features(config):
    """
    Generates structured dummy feature sequences simulating handwritten characters.
    Replace this loader with your actual EMNIST preprocessed feature data.
    """
    np.random.seed(42)
    dataset = {}
    for label in CLASSES:
        sequences = []
        for _ in range(config["n_samples_per_class"]):
            # Simulating sequential feature trajectory over time across 5 states
            seq_len = np.random.randint(12, 20)
            seq = np.random.randn(seq_len, config["num_features"]) + ord(label) % 5
            sequences.append(seq)
        dataset[label] = sequences
    return dataset

# ==========================================
# 4. HMM Training Loop
# ==========================================
def train_hmm_models(dataset, config):
    models = {}
    start_prob, initial_trans = create_left_to_right_mask(config["num_states"])

    print(f"Training HMMs for {len(dataset)} classes...")

    for label, seq_list in dataset.items():
        # Concatenate sequences for hmmlearn fit interface
        X = np.concatenate(seq_list)
        lengths = [len(s) for s in seq_list]

        # Initialize Gaussian HMM with strict topology
        model = hmm.GaussianHMM(
            n_components=config["num_states"],
            covariance_type="diag",
            n_iter=50,
            tol=1e-2,
            params="mc",       # Update Means and Covariances only; keep transmat frozen
            init_params="mc",
            random_state=42
        )

        # Set strict left-to-right topology
        model.startprob_ = start_prob.copy()
        model.transmat_ = initial_trans.copy()

        # Train model parameters
        model.fit(X, lengths)
        models[label] = model

    print("Training complete.")
    return models

# ==========================================
# 5. Full Export Pipeline
# ==========================================
def save_all_weights(models_dict, config=CONFIG, output_dir=OUTPUT_DIR):
    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(MEM_SUBDIR, exist_ok=True)

    prefix = "hmm_emnist"

    # A. Save Python PKL Object
    joblib.dump({"config": config, "models": models_dict}, os.path.join(output_dir, f"{prefix}_models.pkl"))

    # B. Save Human-Readable JSON File
    json_data = {"config": config, "models": {}}
    for label, model in models_dict.items():
        json_data["models"][label] = {
            "startprob": model.startprob_.tolist(),
            "transmat": model.transmat_.tolist(),
            "means": model.means_.tolist(),
            "covars": model.covars_.tolist()
        }
    with open(os.path.join(output_dir, f"{prefix}_weights.json"), "w") as f:
        json.dump(json_data, f, indent=4)

    # C. Save Verilog Macro Header (.vh)
    with open(os.path.join(output_dir, f"{prefix}_params.vh"), "w") as f:
        f.write("// Auto-generated HMM Macros for FPGA Hardware Architecture\n")
        for k, v in config.items():
            f.write(f"`define {k.upper()} {v}\n")

    # D. Save FPGA .mem Files (Transitions, Means, Inverse Variances)
    scale = config["q_scale"]
    
    for label, model in models_dict.items():
        # 1. Transition Costs (5x5 = 25 words)
        trans_fixed = float_to_fixed_log(model.transmat_, scale=scale, floor=config["prob_floor"])
        with open(os.path.join(MEM_SUBDIR, f"trans_matrix_{label}.mem"), "w") as f:
            for val in trans_fixed.flatten():
                f.write(f"{val:04X}\n")

        # 2. Gaussian Means (5 states x 4 features = 20 words)
        means_fixed = np.round(np.abs(model.means_) * scale).astype(np.uint16)
        with open(os.path.join(MEM_SUBDIR, f"means_{label}.mem"), "w") as f:
            for val in means_fixed.flatten():
                f.write(f"{val:04X}\n")

        # 3. Inverse Variances: 1 / (2 * sigma^2) scaled by Q8.8 (20 words)
        inv_covars = 1.0 / (2.0 * np.maximum(model.covars_, 1e-4))
        covars_fixed = np.round(inv_covars * scale).astype(np.uint16)
        with open(os.path.join(MEM_SUBDIR, f"covars_{label}.mem"), "w") as f:
            for val in covars_fixed.flatten():
                f.write(f"{val:04X}\n")

    print(f"\n--- Export Complete ---")
    print(f"Artifacts exported to: {output_dir}")
    print(f"FPGA memory files (.mem) written to: {MEM_SUBDIR}")

# ==========================================
# 6. Main Execution
# ==========================================
if __name__ == "__main__":
    dataset = load_emnist_features(CONFIG)
    models = train_hmm_models(dataset, CONFIG)
    save_all_weights(models, CONFIG, OUTPUT_DIR)
