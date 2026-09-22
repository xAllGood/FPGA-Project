import os
import json
import numpy as np
from torchvision import datasets
from sklearn.preprocessing import StandardScaler
from scipy.interpolate import interp1d
from hmmlearn import hmm

OUTPUT_DIR = "./output_weights_continuous"
os.makedirs(OUTPUT_DIR, exist_ok=True)

TARGET_FRAMES = 16
NUM_STATES = 5
NUM_FEATURES = 10

def resample_sequence(seq, target_len=16):
    curr_len, num_features = seq.shape
    if curr_len == target_len:
        return seq
    if curr_len < 2:
        return np.repeat(seq, target_len, axis=0)[:target_len]

    x_old = np.linspace(0, 1, curr_len)
    x_new = np.linspace(0, 1, target_len)
    resampled = np.zeros((target_len, num_features), dtype=np.float32)
    for f in range(num_features):
        f_interp = interp1d(x_old, seq[:, f], kind='linear', fill_value='extrapolate')
        resampled[:, f] = f_interp(x_new)
    return resampled

def extract_features(img_np, target_frames=16):
    """Extracts 10 continuous features per frame across bounding box columns."""
    crop_h, crop_w = img_np.shape
    col_sums = np.sum(img_np, axis=0)
    active_cols = np.where(col_sums > 0.05)[0]
    
    if len(active_cols) > 0:
        img_cropped = img_np[:, active_cols[0]:active_cols[-1] + 1]
    else:
        img_cropped = img_np

    crop_h, crop_w = img_cropped.shape
    if crop_w == 0 or crop_h == 0:
        return np.zeros((target_frames, NUM_FEATURES), dtype=np.float32)

    features = []
    for t in range(crop_w):
        col = img_cropped[:, t]
        
        total_density = float(np.sum(col))
        upper_density = float(np.sum(col[: crop_h // 2]))
        lower_density = float(np.sum(col[crop_h // 2 :]))
        
        active_indices = np.where(col > 0.1)[0]
        if len(active_indices) > 0:
            top_pixel = float(active_indices[0]) / float(crop_h)
            bottom_pixel = float(active_indices[-1]) / float(crop_h)
            center_of_mass = float(np.mean(active_indices)) / float(crop_h)
            stroke_height = bottom_pixel - top_pixel
        else:
            top_pixel, bottom_pixel, center_of_mass, stroke_height = 0.0, 0.0, 0.0, 0.0

        transitions = float(np.sum(np.diff((col > 0.1).astype(int)) != 0))
        z1 = float(np.sum(col[: crop_h // 3]))
        z2 = float(np.sum(col[crop_h // 3 : 2 * crop_h // 3]))

        features.append([
            total_density, upper_density, lower_density,
            top_pixel, bottom_pixel, center_of_mass, stroke_height,
            transitions, z1, z2
        ])

    raw_seq = np.array(features, dtype=np.float32)
    return resample_sequence(raw_seq, target_len=target_frames)

def init_left_right_transmat(n_states):
    """Constructs strict Left-to-Right (Bakis topology) transition matrix."""
    transmat = np.zeros((n_states, n_states))
    for i in range(n_states):
        if i == n_states - 1:
            transmat[i, i] = 1.0
        else:
            transmat[i, i] = 0.6
            transmat[i, i + 1] = 0.4
    return transmat

def main():
    print("Loading EMNIST Letters dataset...")
    # EMNIST Letters split: class labels 1-26 mapped to A-Z
    dataset = datasets.EMNIST(root="./data", split="letters", train=True, download=True)

    char_samples = {chr(ord('A') + i): [] for i in range(26)}
    
    print("Extracting features across samples...")
    for img, label in dataset:
        if 1 <= label <= 26:
            char = chr(ord('A') + label - 1)
            # EMNIST images are stored transposed by default; keep native orientation
            img_np = np.array(img, dtype=np.float32) / 255.0
            feat_seq = extract_features(img_np, target_frames=TARGET_FRAMES)
            char_samples[char].append(feat_seq)

    # Flatten all sequences to fit standard scaler
    all_sequences = []
    for char in char_samples:
        char_samples[char] = char_samples[char][:500]  # Cap at 500 samples per class for efficient training
        all_sequences.extend(char_samples[char])

    X_all = np.vstack(all_sequences)
    scaler = StandardScaler()
    scaler.fit(X_all)

    # Save scale parameters for inference alignment
    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_mean.csv"), scaler.mean_, delimiter=",")
    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_scale.csv"), scaler.scale_, delimiter=",")

    model_json = {"models": {}}

    print("\nTraining Left-to-Right Continuous HMMs...")
    for char in sorted(char_samples.keys()):
        seqs = char_samples[char]
        scaled_seqs = [scaler.transform(s) for s in seqs]
        
        X_train = np.vstack(scaled_seqs)
        lengths = [len(s) for s in scaled_seqs]

        # Initialize Left-to-Right topology
        model = hmm.GaussianHMM(
            n_components=NUM_STATES,
            covariance_type="diag",
            n_iter=50,
            min_covar=1e-3,
            init_params="mc"  # Initialize Means and Covariances only; keep manual transmat/startprob
        )

        startprob = np.zeros(NUM_STATES)
        startprob[0] = 1.0
        model.startprob_ = startprob
        model.transmat_ = init_left_right_transmat(NUM_STATES)

        # Train with Baum-Welch
        model.fit(X_train, lengths)

        # Force transition matrix upper-triangularity to maintain Bakis topology post-fit
        transmat_clean = np.triu(model.transmat_)
        row_sums = transmat_clean.sum(axis=1, keepdims=True)
        row_sums[row_sums == 0] = 1.0
        transmat_clean = transmat_clean / row_sums

        model_json["models"][char] = {
            "startprob": model.startprob_.tolist(),
            "transmat": transmat_clean.tolist(),
            "means": model.means_.tolist(),
            "covars": model.covars_.tolist()
        }
        print(f"  ✓ Trained HMM for Character '{char}'")

    weights_path = os.path.join(OUTPUT_DIR, "hmm_emnist_continuous_weights.json")
    with open(weights_path, "w") as f:
        json.dump(model_json, f, indent=2)

    print(f"\n=========================================================")
    print(f" Training complete. Weights written to: {weights_path}")
    print(f"=========================================================")

if __name__ == "__main__":
    main()
