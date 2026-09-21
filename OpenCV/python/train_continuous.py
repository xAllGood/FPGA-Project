import os
import pickle
import json
import numpy as np
import torch
import torchvision
import torchvision.transforms as transforms
from hmmlearn import hmm
from scipy.interpolate import interp1d

# Tuned Configuration Parameters
CONFIG = {
    "num_states": 7,          # Increased for finer structural slicing
    "num_features": 32,       # 16 base features + 16 delta (velocity) features
    "target_len": 24,         # Higher temporal resolution
    "samples_per_class": 3000, # Expanded dataset size per letter
    "batch_size": 64
}

WEIGHTS_DIR = "./output_weights_continuous"
os.makedirs(WEIGHTS_DIR, exist_ok=True)

def resample_sequence(seq, target_len=24):
    curr_len, num_features = seq.shape
    if curr_len == target_len:
        return seq
    if curr_len < 2:
        return np.repeat(seq, target_len, axis=0)[:target_len]

    x_old = np.linspace(0, 1, curr_len)
    x_new = np.linspace(0, 1, target_len)
    
    resampled = np.zeros((target_len, num_features), dtype=np.float32)
    for f in range(num_features):
        f_interp = interp1d(x_old, seq[:, f], kind='linear', fill_value="extrapolate")
        resampled[:, f] = f_interp(x_new)
        
    return resampled

def extract_emnist_features(img_tensor, config):
    img = img_tensor.numpy() if isinstance(img_tensor, torch.Tensor) else img_tensor
    h, w = img.shape
    
    col_sums = np.sum(img, axis=0)
    active_cols = np.where(col_sums > 0.05)[0]
    img_cropped = img[:, active_cols[0]:active_cols[-1]+1] if len(active_cols) > 0 else img

    features = []
    for t in range(img_cropped.shape[1]):
        col = img_cropped[:, t]
        
        total_density = np.sum(col)
        upper_density = np.sum(col[: h // 2])
        lower_density = np.sum(col[h // 2 :])
        
        active_indices = np.where(col > 0.1)[0]
        if len(active_indices) > 0:
            top_pixel = active_indices[0] / float(h)
            bottom_pixel = active_indices[-1] / float(h)
            center_of_mass = np.mean(active_indices) / float(h)
            stroke_height = bottom_pixel - top_pixel
        else:
            top_pixel, bottom_pixel, center_of_mass, stroke_height = 0.0, 0.0, 0.0, 0.0

        transitions = np.sum(np.diff((col > 0.1).astype(int)) != 0)
        
        z1 = np.sum(col[: h // 3])
        z2 = np.sum(col[h // 3 : 2 * h // 3])
        z3 = np.sum(col[2 * h // 3 :])

        features.append([
            total_density, upper_density, lower_density,
            top_pixel, bottom_pixel, center_of_mass, stroke_height,
            float(transitions), z1, z2, z3,
            np.sum(col[: h // 4]), 
            np.sum(col[3 * h // 4:]), 
            float(len(active_indices)) / float(h),
            np.std(active_indices) / float(h) if len(active_indices) > 0 else 0.0,
            float(t) / float(max(1, img_cropped.shape[1]))
        ])

    base_seq = np.array(features, dtype=np.float32)
    resampled_base = resample_sequence(base_seq, target_len=config["target_len"])
    
    # Compute Delta Features (First-order derivative of features over time)
    delta_seq = np.gradient(resampled_base, axis=0)
    
    # Combine base structural features and velocity deltas (Total: 32 features)
    combined_seq = np.hstack([resampled_base, delta_seq])
    return combined_seq

if __name__ == "__main__":
    print("Loading EMNIST Letters dataset...")
    transform = transforms.Compose([transforms.ToTensor()])
    train_dataset = torchvision.datasets.EMNIST(
        root="./data", split="letters", train=True, download=True, transform=transform
    )

    print(f"Extracting 32-feature profiles (Target samples/class: {CONFIG['samples_per_class']})...")
    class_data = {i: [] for i in range(1, 27)}
    
    for img, label in train_dataset:
        if len(class_data[label]) < CONFIG["samples_per_class"]:
            upright = torch.transpose(img.squeeze(), 0, 1)
            seq = extract_emnist_features(upright, CONFIG)
            class_data[label].append(seq)
            
        if all(len(v) == CONFIG["samples_per_class"] for v in class_data.values()):
            break

    # Standardize features globally
    all_sequences = [seq for seqs in class_data.values() for seq in seqs]
    all_sequences_arr = np.concatenate(all_sequences, axis=0)
    scaler_mean = np.mean(all_sequences_arr, axis=0)
    scaler_scale = np.std(all_sequences_arr, axis=0)
    scaler_scale = np.where(scaler_scale == 0, 1.0, scaler_scale)

    np.savetxt(os.path.join(WEIGHTS_DIR, "scaler_mean.csv"), scaler_mean, delimiter=",")
    np.savetxt(os.path.join(WEIGHTS_DIR, "scaler_scale.csv"), scaler_scale, delimiter=",")

    # Train Tuned Continuous GMM-HMM models
    hmm_models = {}
    json_export_data = {"models": {}}

    print("\nTraining Tuned Continuous HMMs (states=7, n_iter=100)...")
    for label_idx in range(1, 27):
        char = chr(64 + label_idx)
        scaled_sequences = [(seq - scaler_mean) / scaler_scale for seq in class_data[label_idx]]
        
        model = hmm.GaussianHMM(
            n_components=CONFIG["num_states"],
            covariance_type="diag",
            n_iter=100,
            tol=1e-4,
            random_state=42
        )
        
        lengths = [len(s) for s in scaled_sequences]
        X_train = np.concatenate(scaled_sequences, axis=0)
        
        model.fit(X_train, lengths)
        hmm_models[char] = model

        json_export_data["models"][char] = {
            "startprob": model.startprob_.tolist(),
            "transmat": model.transmat_.tolist(),
            "means": model.means_.tolist(),
            "covars": model.covars_.tolist()
        }
        print(f"[{char}] Model trained successfully.")

    with open(os.path.join(WEIGHTS_DIR, "hmm_models.pkl"), "wb") as f:
        pickle.dump(hmm_models, f)

    with open(os.path.join(WEIGHTS_DIR, "hmm_emnist_continuous_weights.json"), "w") as f:
        json.dump(json_export_data, f)

    print(f"\nTraining complete! Updated weights saved to {WEIGHTS_DIR}/")
