import os
import pickle
import torch
import numpy as np
import torchvision
import torchvision.transforms as transforms
from scipy.interpolate import interp1d

WEIGHTS_DIR = "./output_weights_continuous"
MODEL_FILE = os.path.join(WEIGHTS_DIR, "hmm_models.pkl")
SCALER_MEAN_FILE = os.path.join(WEIGHTS_DIR, "scaler_mean.csv")
SCALER_SCALE_FILE = os.path.join(WEIGHTS_DIR, "scaler_scale.csv")

if not os.path.exists(MODEL_FILE):
    raise FileNotFoundError(f"Missing model file: {MODEL_FILE}. Run train_continuous.py first.")

print("Loading trained Tuned Continuous HMM models and scaler stats...")
with open(MODEL_FILE, "rb") as f:
    hmm_models = pickle.load(f)

scaler_mean = np.loadtxt(SCALER_MEAN_FILE, delimiter=",")
scaler_scale = np.loadtxt(SCALER_SCALE_FILE, delimiter=",")

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

def extract_emnist_features(img_tensor, target_len=24):
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
    resampled_base = resample_sequence(base_seq, target_len=target_len)
    
    # Synchronized 32-feature extraction layout (Base + Delta)
    delta_seq = np.gradient(resampled_base, axis=0)
    combined_seq = np.hstack([resampled_base, delta_seq])
    return combined_seq

# Load EMNIST test dataset
transform = transforms.Compose([transforms.ToTensor()])
test_dataset = torchvision.datasets.EMNIST(
    root="./data", split="letters", train=False, download=True, transform=transform
)

correct = 0
total_samples = 100

print(f"\nEvaluating {total_samples} random samples on Tuned Continuous HMM...\n")
print(f"{'Sample':<8} | {'True Char':<10} | {'Predicted':<10} | {'Result':<8}")
print("-" * 44)

np.random.seed(42)
test_indices = np.random.choice(len(test_dataset), size=total_samples, replace=False)

for i, idx in enumerate(test_indices):
    img_tensor, label_idx = test_dataset[int(idx)]
    true_char = chr(64 + int(label_idx))
    
    upright_tensor = torch.transpose(img_tensor.squeeze(), 0, 1)
    raw_seq = extract_emnist_features(upright_tensor, target_len=24)
    
    norm_seq = (raw_seq - scaler_mean) / scaler_scale
    
    best_score = float("-inf")
    pred_char = None
    
    for char, model in hmm_models.items():
        try:
            score = model.score(norm_seq)
            if score > best_score:
                best_score = score
                pred_char = char
        except Exception:
            continue
            
    is_correct = (pred_char == true_char)
    if is_correct:
        correct += 1
        
    print(f"{i+1:<8} | {true_char:<10} | {str(pred_char):<10} | {'PASS' if is_correct else 'FAIL':<8}")

accuracy = (correct / total_samples) * 100
print("-" * 44)
print(f"\n==========================================")
print(f" Tuned Continuous HMM Accuracy: {accuracy:.2f}%")
print("==========================================\n")
