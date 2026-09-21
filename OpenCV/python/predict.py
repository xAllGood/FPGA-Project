import os
import json
import torch
import numpy as np
import pandas as pd
import torchvision
import torchvision.transforms as transforms
from torch.utils.data import DataLoader
from train_continuous import extract_emnist_features, CONFIG
from hmmlearn import hmm
from sklearn.metrics import confusion_matrix

WEIGHTS_DIR = "./output_weights_continuous"

# 1. Load trained weights & scaler parameters
weights_path = os.path.join(WEIGHTS_DIR, "hmm_emnist_continuous_weights.json")
scaler_mean_path = os.path.join(WEIGHTS_DIR, "scaler_mean.csv")
scaler_scale_path = os.path.join(WEIGHTS_DIR, "scaler_scale.csv")

if not os.path.exists(weights_path):
    raise FileNotFoundError(f"Model weights file not found at {weights_path}")

with open(weights_path, "r") as f:
    weight_data = json.load(f)

scaler_mean = np.loadtxt(scaler_mean_path, delimiter=",")
scaler_scale = np.loadtxt(scaler_scale_path, delimiter=",")

def standardize_sequence(seq):
    scale_safe = np.where(scaler_scale == 0, 1.0, scaler_scale)
    return (seq - scaler_mean) / scale_safe

# 2. Optimized HMM Scoring Function with Normalization & Variance Bounding
def score_with_hmmlearn(seq, model_params):
    n_states = len(model_params["startprob"])
    n_features = seq.shape[1]

    raw_means = np.array(model_params["means"], dtype=np.float64)
    raw_covars = np.array(model_params["covars"], dtype=np.float64)

    means = raw_means.reshape(n_states, n_features)

    # Reconstruct covariance matrix and cap bounds [0.01, 2.0]
    if raw_covars.size == n_states * n_features * n_features:
        covars = raw_covars.reshape(n_states, n_features, n_features)
        diag_covars = np.zeros((n_states, n_features))
        for i in range(n_states):
            diag_covars[i] = np.diag(covars[i])
        covars = np.clip(diag_covars, 0.01, 2.0)
    elif raw_covars.size == n_states * n_features:
        covars = np.clip(raw_covars.reshape(n_states, n_features), 0.01, 2.0)
    else:
        n_mix = raw_covars.size // (n_states * n_features)
        covars = np.clip(raw_covars.reshape(n_states, n_mix, n_features).mean(axis=1), 0.01, 2.0)

    model = hmm.GaussianHMM(n_components=n_states, covariance_type="diag")

    # Regularize transition probabilities
    eps = 1e-3
    startprob = np.array(model_params["startprob"], dtype=np.float64) + eps
    model.startprob_ = startprob / np.sum(startprob)

    transmat = np.array(model_params["transmat"], dtype=np.float64) + eps
    model.transmat_ = transmat / np.sum(transmat, axis=1, keepdims=True)

    model.means_ = means
    model.covars_ = covars

    try:
        # Per-frame average log-likelihood normalization
        score = model.score(seq) / float(seq.shape[0])
        if np.isinf(score) or np.isnan(score):
            score, _ = model.decode(seq, algorithm="viterbi")
            score = score / float(seq.shape[0])
    except Exception:
        score = -999999.0

    return score

# 3. Shuffled Evaluation Pipeline across all 26 Classes
if __name__ == "__main__":
    transform = transforms.Compose([transforms.ToTensor()])
    test_dataset = torchvision.datasets.EMNIST(
        root="./data", split="letters", train=False, download=True, transform=transform
    )

    torch.manual_seed(42)
    test_loader = DataLoader(test_dataset, batch_size=1, shuffle=True)

    NUM_TEST_SAMPLES = 500
    correct_top1 = 0
    correct_top5 = 0

    y_true = []
    y_pred = []

    print(f"Running evaluation on {NUM_TEST_SAMPLES} randomized EMNIST test samples...")

    for i, (img_tensor, label_idx_tensor) in enumerate(test_loader):
        if i >= NUM_TEST_SAMPLES:
            break

        label_idx = int(label_idx_tensor.item())
        
        # 1-based index conversion for EMNIST letters
        true_char = chr(64 + label_idx)

        upright_tensor = torch.transpose(img_tensor.squeeze(), 0, 1)
        raw_seq = extract_emnist_features(upright_tensor, CONFIG)
        scaled_seq = standardize_sequence(raw_seq)

        scores = {
            char: score_with_hmmlearn(scaled_seq, params)
            for char, params in weight_data["models"].items()
        }

        sorted_preds = sorted(scores.items(), key=lambda x: x[1], reverse=True)
        top1_pred = sorted_preds[0][0]
        top5_preds = [p[0] for p in sorted_preds[:5]]

        y_true.append(true_char)
        y_pred.append(top1_pred)

        if top1_pred == true_char:
            correct_top1 += 1
        if true_char in top5_preds:
            correct_top5 += 1

        if (i + 1) % 100 == 0:
            print(f"Processed {i + 1}/{NUM_TEST_SAMPLES} samples...")

    print("\n==========================================")
    print(f" Top-1 Accuracy: {correct_top1 / NUM_TEST_SAMPLES * 100:.2f}%")
    print(f" Top-5 Accuracy: {correct_top5 / NUM_TEST_SAMPLES * 100:.2f}%")
    print("==========================================")

    labels = [chr(64 + i) for i in range(1, 27)]
    cm = confusion_matrix(y_true, y_pred, labels=labels)
    cm_df = pd.DataFrame(cm, index=labels, columns=labels)

    print("\n--- Balanced Character Confusion Matrix ---")
    pd.set_option('display.max_columns', 30)
    pd.set_option('display.width', 1000)
    print(cm_df)
