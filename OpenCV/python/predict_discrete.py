import json
import os
import sys
import numpy as np
import torch
import torchvision
import torchvision.transforms as transforms
from sklearn.metrics import pairwise_distances_argmin
from hmmlearn.hmm import CategoricalHMM

JSON_WEIGHTS_PATH = "./output_weights/hmm_emnist_weights.json"
CENTROIDS_PATH = "./output_weights/kmeans_centroids.csv"
SCALER_MEAN_PATH = "./output_weights/scaler_mean.csv"
SCALER_SCALE_PATH = "./output_weights/scaler_scale.csv"
NUM_SAMPLES = 100

if not all(os.path.exists(p) for p in [JSON_WEIGHTS_PATH, CENTROIDS_PATH, SCALER_MEAN_PATH, SCALER_SCALE_PATH]):
    sys.exit("Error: Model weights, scaler, or centroids not found. Run train_discrete.py first.")

with open(JSON_WEIGHTS_PATH, "r") as f:
    raw_json = json.load(f)

weights_dict = raw_json["models"]
config = raw_json["config"]
centroids = np.loadtxt(CENTROIDS_PATH, delimiter=",")
scaler_mean = np.loadtxt(SCALER_MEAN_PATH, delimiter=",")
scaler_scale = np.loadtxt(SCALER_SCALE_PATH, delimiter=",")

models = {}
for char_label, params in weights_dict.items():
    model = CategoricalHMM(n_components=config["num_states"])
    model.startprob_ = np.array(params["startprob"])
    model.transmat_ = np.array(params["transmat"])
    model.emissionprob_ = np.array(params["emissionprob"])
    models[char_label] = model

transform = transforms.Compose([transforms.ToTensor()])
test_dataset = torchvision.datasets.EMNIST(
    root="./data", split="letters", train=False, download=True, transform=transform
)
label_to_char = {i: chr(64 + i) for i in range(1, 27)}

np.random.seed(42)
test_indices = np.random.choice(len(test_dataset), size=NUM_SAMPLES, replace=False)

def extract_features(img_tensor):
    img = np.fliplr(np.rot90(img_tensor.numpy().squeeze(), -1))
    h, w = img.shape
    base_features = []

    for x in range(0, w - config["window_width"] + 1, config["step_size"]):
        window = img[:, x : x + config["window_width"]]
        
        pixel_density = np.sum(window) / (h * config["window_width"])
        col_sums = np.sum(window, axis=1)
        has_pixels = col_sums > 0
        
        if np.any(has_pixels):
            upper_profile = np.argmax(has_pixels) / float(h)
            lower_profile = (h - np.argmin(has_pixels[::-1])) / float(h)
            center_gravity = np.mean(np.where(window > 0)[0]) / float(h)
            height_ratio = lower_profile - upper_profile
        else:
            upper_profile = 0.0
            lower_profile = 1.0
            center_gravity = 0.5
            height_ratio = 0.0

        binary_col = (window[:, 0] > 0.2).astype(int)
        stroke_transitions = np.sum(np.diff(binary_col) != 0) / 10.0

        base_features.append([
            pixel_density, 
            upper_profile, 
            lower_profile, 
            center_gravity, 
            height_ratio, 
            stroke_transitions
        ])

    base_arr = np.array(base_features)
    deltas = np.zeros_like(base_arr)
    deltas[1:] = base_arr[1:] - base_arr[:-1]

    full_features = np.hstack([base_arr, deltas])
    
    # Scale features using saved training statistics
    scaled_features = (full_features - scaler_mean) / scaler_scale
    return scaled_features

correct_count = 0
results = []

print(f"Evaluating {NUM_SAMPLES} random samples with Trajectory-Scaled Categorical HMM...\n")

for idx in test_indices:
    sample_img, sample_label = test_dataset[int(idx)]
    true_char = label_to_char[int(sample_label)]

    feats = extract_features(sample_img)
    discrete_seq = pairwise_distances_argmin(feats, centroids).reshape(-1, 1)

    best_char = None
    max_score = float("-inf")

    for char, model in models.items():
        try:
            score = model.score(discrete_seq)
            if score > max_score:
                max_score = score
                best_char = char
        except Exception:
            continue

    is_correct = (best_char == true_char)
    if is_correct:
        correct_count += 1

    results.append((int(idx), true_char, best_char, max_score, is_correct))

accuracy = (correct_count / NUM_SAMPLES) * 100

print("==========================================")
print(f" Standardized Trajectory HMM Accuracy: {accuracy:.2f}%")
print("==========================================\n")

print(f"{'Index':<8} | {'True Label':<12} | {'Predicted':<12} | {'Log-Likelihood':<20} | {'Status'}")
print("-" * 75)
for idx, true_lbl, pred_lbl, score, status in results[:20]:
    stat_str = "MATCH" if status else "MISMATCH"
    print(f"{idx:<8} | {true_lbl:<12} | {pred_lbl:<12} | {score:<20.4f} | {stat_str}")
