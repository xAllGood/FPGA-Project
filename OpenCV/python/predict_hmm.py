import os
import json
import numpy as np
import cv2
from scipy.interpolate import interp1d
from hmmlearn import hmm

WEIGHTS_FILE = "./output_weights_continuous/hmm_emnist_continuous_weights.json"
SCALER_MEAN_FILE = "./output_weights_continuous/scaler_mean.csv"
SCALER_SCALE_FILE = "./output_weights_continuous/scaler_scale.csv"

TARGET_FRAMES = 16
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

def extract_features(img_path, target_frames=16):
    if not os.path.exists(img_path):
        raise FileNotFoundError(f"Image not found at path: {img_path}")

    img = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)
    if img is None:
        raise ValueError(f"Unable to read image at {img_path}")

    _, img_bin = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY)
    img_np = img_bin.astype(np.float32) / 255.0

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

def load_scaler():
    mean = np.loadtxt(SCALER_MEAN_FILE, delimiter=",")
    scale = np.loadtxt(SCALER_SCALE_FILE, delimiter=",")
    return mean, scale

def load_models(json_path):
    with open(json_path, "r") as f:
        data = json.load(f)

    models = {}
    for char, params in data["models"].items():
        n_components = len(params["startprob"])
        means_arr = np.array(params["means"], dtype=np.float64)
        covars_arr = np.array(params["covars"], dtype=np.float64)
        
        n_features = means_arr.shape[1]

        model = hmm.GaussianHMM(
            n_components=n_components,
            covariance_type="diag"
        )
        
        # Explicitly declare feature dimension
        model.n_features = n_features

        model.startprob_ = np.array(params["startprob"], dtype=np.float64)
        model.transmat_ = np.array(params["transmat"], dtype=np.float64)
        model.means_ = means_arr
        model.covars_ = covars_arr
        models[char] = model

    return models

def predict(img_path):
    raw_seq = extract_features(img_path, target_frames=TARGET_FRAMES)
    scaler_mean, scaler_scale = load_scaler()

    scaled_seq = (raw_seq - scaler_mean) / scaler_scale
    sequence_length = len(scaled_seq)

    models = load_models(WEIGHTS_FILE)

    scores = {}
    for char, model in models.items():
        try:
            raw_log_likelihood = model.score(scaled_seq)
            norm_score = raw_log_likelihood / float(sequence_length)
            scores[char] = norm_score
        except Exception:
            scores[char] = -np.inf

    sorted_predictions = sorted(scores.items(), key=lambda item: item[1], reverse=True)

    top_char, top_score = sorted_predictions[0]

    print(f"\n================================================================================")
    print(f" PREDICTION LEADERBOARD: [{os.path.basename(img_path)}]")
    print(f"================================================================================")
    print(f"Rank | Character | Normalized Log-Likelihood (Score / T) | Raw Log-Likelihood")
    print(f"--------------------------------------------------------------------------------")
    for rank, (char, score) in enumerate(sorted_predictions[:5], start=1):
        raw_ll = score * sequence_length
        print(f" #{rank}  |     '{char}'     | {score:35.4f} | {raw_ll:18.4f}")
    print(f"--------------------------------------------------------------------------------")
    print(f" Final Prediction: '{top_char}' (Normalized LL: {top_score:.4f})")
    print(f"================================================================================\n")

    return top_char

if __name__ == "__main__":
    import sys
    test_img = sys.argv[1] if len(sys.argv) > 1 else "/mnt/d/College/Projects/VLSI_Project/Softwares/output/python/a.png"
    predict(test_img)
