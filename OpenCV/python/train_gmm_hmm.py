import os
import json
import numpy as np
import torchvision
import torchvision.transforms as transforms
from sklearn.preprocessing import StandardScaler
from hmmlearn import hmm

# ==========================================
# 1. Pipeline Configuration
# ==========================================
CONFIG = {
    "image_width": 28,
    "image_height": 28,
    "window_width": 3,
    "step_size": 1,
    "num_states": 6,
    "num_mix": 3,              # 3 Gaussian mixtures per state
    "samples_per_class": 1200,
}

OUTPUT_DIR = "./output_weights_gmm"
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ==========================================
# 2. Multi-Zone Structural Feature Extraction
# ==========================================
def extract_emnist_features(img_tensor, cfg=CONFIG):
    img = img_tensor.numpy().squeeze()
    
    # EMNIST dataset orientation fix
    img = np.rot90(img, -1)
    img = np.fliplr(img)

    h, w = img.shape
    base_features = []

    for x in range(0, w - cfg["window_width"] + 1, cfg["step_size"]):
        window = img[:, x : x + cfg["window_width"]]
        
        # Whole-window density
        total_density = np.sum(window) / (h * cfg["window_width"])
        
        # 3 Vertical Sub-Zone Densities (Top, Middle, Bottom)
        top_zone = np.sum(window[:9, :]) / (9 * cfg["window_width"])
        mid_zone = np.sum(window[9:19, :]) / (10 * cfg["window_width"])
        bot_zone = np.sum(window[19:, :]) / (9 * cfg["window_width"])

        col_sums = np.sum(window, axis=1)
        has_pixels = col_sums > 0
        
        if np.any(has_pixels):
            upper_profile = np.argmax(has_pixels) / float(h)
            lower_profile = (h - np.argmin(has_pixels[::-1])) / float(h)
            center_gravity = np.mean(np.where(window > 0)[0]) / float(h)
        else:
            upper_profile = 0.0
            lower_profile = 1.0
            center_gravity = 0.5

        binary_col = (window[:, 1] > 0.2).astype(int)
        stroke_transitions = np.sum(np.diff(binary_col) != 0) / 10.0

        base_features.append([
            total_density,
            top_zone,
            mid_zone,
            bot_zone,
            upper_profile,
            lower_profile,
            center_gravity,
            stroke_transitions
        ])

    base_arr = np.array(base_features)

    # Frame-to-frame delta velocity features
    deltas = np.zeros_like(base_arr)
    deltas[1:] = base_arr[1:] - base_arr[:-1]

    full_features = np.hstack([base_arr, deltas])
    return full_features

# ==========================================
# 3. Execution Pipeline
# ==========================================
if __name__ == "__main__":
    print("Loading EMNIST Letters dataset...")
    transform = transforms.Compose([transforms.ToTensor()])
    train_dataset = torchvision.datasets.EMNIST(
        root="./data", split="letters", train=True, download=True, transform=transform
    )

    label_to_char = {i: chr(64 + i) for i in range(1, 27)}
    class_samples = {char: [] for char in label_to_char.values()}

    print(f"Extracting multi-zone continuous features ({CONFIG['samples_per_class']} samples/class)...")
    for img_tensor, label in train_dataset:
        if label in label_to_char:
            char_label = label_to_char[label]
            if len(class_samples[char_label]) < CONFIG["samples_per_class"]:
                seq = extract_emnist_features(img_tensor, CONFIG)
                class_samples[char_label].append(seq)
                
        if all(len(s) == CONFIG["samples_per_class"] for s in class_samples.values()):
            break

    # Feature Standardization across continuous space
    all_features = np.vstack([seq for sequences in class_samples.values() for seq in sequences])
    scaler = StandardScaler()
    scaler.fit(all_features)

    trained_models = {}

    print("\n--- Training Continuous GMM-HMM Models ('A' through 'Z') ---")
    for char_label, sequences in class_samples.items():
        scaled_sequences = [scaler.transform(seq) for seq in sequences]
        X = np.concatenate(scaled_sequences)
        lengths = [len(seq) for seq in scaled_sequences]

        model = hmm.GMMHMM(
            n_components=CONFIG["num_states"],
            n_mix=CONFIG["num_mix"],
            covariance_type="diag",
            n_iter=80,
            init_params="",
            params="mctw",
            random_state=42
        )

        model.startprob_ = np.array([1.0] + [0.0] * (CONFIG["num_states"] - 1))
        
        # Left-to-right state transition topology
        transmat = np.zeros((CONFIG["num_states"], CONFIG["num_states"]))
        for i in range(CONFIG["num_states"]):
            if i < CONFIG["num_states"] - 1:
                transmat[i, i] = 0.55
                transmat[i, i + 1] = 0.45
            else:
                transmat[i, i] = 1.0
        model.transmat_ = transmat

        # Initialize GMM parameters over concatenated data
        model.fit(X, lengths)
        trained_models[char_label] = model

    print("Training Complete!")

    # Export Weights and Parameters
    json_path = os.path.join(OUTPUT_DIR, "hmm_emnist_gmm_weights.json")
    json_data = {"config": CONFIG, "models": {}}
    
    for label, model in trained_models.items():
        json_data["models"][label] = {
            "startprob": model.startprob_.tolist(),
            "transmat": model.transmat_.tolist(),
            "weights": model.weights_.tolist(),
            "means": model.means_.tolist(),
            "covars": model.covars_.tolist()
        }

    with open(json_path, "w") as f:
        json.dump(json_data, f, indent=4)

    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_mean.csv"), scaler.mean_, delimiter=",")
    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_scale.csv"), scaler.scale_, delimiter=",")

    print(f"\nSaved continuous GMM-HMM weights and scaler parameters to '{OUTPUT_DIR}'.")
