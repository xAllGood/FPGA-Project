import os
import json
import numpy as np
import torchvision
import torchvision.transforms as transforms
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
from hmmlearn import hmm

# ==========================================
# 1. Pipeline Configuration
# ==========================================
CONFIG = {
    "image_width": 28,
    "image_height": 28,
    "window_width": 2,
    "step_size": 1,
    "num_states": 6,
    "num_symbols": 32,
    "samples_per_class": 800,
}

OUTPUT_DIR = "./output_weights"
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ==========================================
# 2. Dynamic Trajectory Feature Extraction
# ==========================================
def extract_emnist_features(img_tensor, cfg=CONFIG):
    img = img_tensor.numpy().squeeze()
    
    # EMNIST rotation fix
    img = np.rot90(img, -1)
    img = np.fliplr(img)

    h, w = img.shape
    base_features = []

    for x in range(0, w - cfg["window_width"] + 1, cfg["step_size"]):
        window = img[:, x : x + cfg["window_width"]]
        
        pixel_density = np.sum(window) / (h * cfg["window_width"])
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

    # Calculate temporal deltas (velocity of spatial changes)
    deltas = np.zeros_like(base_arr)
    deltas[1:] = base_arr[1:] - base_arr[:-1]

    # Combine static and delta trajectory features
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

    print(f"Extracting trajectory features ({CONFIG['samples_per_class']} samples/class)...")
    for img_tensor, label in train_dataset:
        if label in label_to_char:
            char_label = label_to_char[label]
            if len(class_samples[char_label]) < CONFIG["samples_per_class"]:
                seq = extract_emnist_features(img_tensor, CONFIG)
                class_samples[char_label].append(seq)
                
        if all(len(s) == CONFIG["samples_per_class"] for s in class_samples.values()):
            break

    # Standardize features before K-Means clustering
    all_features = np.vstack([seq for sequences in class_samples.values() for seq in sequences])
    
    scaler = StandardScaler()
    scaled_features = scaler.fit_transform(all_features)

    print("Fitting 32-Symbol K-Means Quantizer on standardized features...")
    kmeans = KMeans(n_clusters=CONFIG["num_symbols"], random_state=42, n_init=10)
    kmeans.fit(scaled_features)

    discrete_class_samples = {}
    for char_label, sequences in class_samples.items():
        discrete_class_samples[char_label] = [
            kmeans.predict(scaler.transform(seq)) for seq in sequences
        ]

    trained_models = {}

    print("\n--- Training Categorical HMM Models ('A' through 'Z') ---")
    for char_label, sequences in discrete_class_samples.items():
        X = np.concatenate(sequences).reshape(-1, 1)
        lengths = [len(seq) for seq in sequences]

        model = hmm.CategoricalHMM(
            n_components=CONFIG["num_states"],
            n_iter=100,
            init_params="",
            params="te",
            random_state=42
        )

        model.startprob_ = np.array([1.0] + [0.0] * (CONFIG["num_states"] - 1))
        
        transmat = np.zeros((CONFIG["num_states"], CONFIG["num_states"]))
        for i in range(CONFIG["num_states"]):
            if i < CONFIG["num_states"] - 1:
                transmat[i, i] = 0.6
                transmat[i, i + 1] = 0.4
            else:
                transmat[i, i] = 1.0
        model.transmat_ = transmat

        emissionprob = np.full((CONFIG["num_states"], CONFIG["num_symbols"]), 1.0 / CONFIG["num_symbols"])
        model.emissionprob_ = emissionprob

        model.fit(X, lengths)
        
        # Laplace Add-1 Smoothing
        model.emissionprob_ = (model.emissionprob_ * len(X) + 1.0) / (len(X) + CONFIG["num_symbols"])
        model.emissionprob_ /= model.emissionprob_.sum(axis=1, keepdims=True)

        trained_models[char_label] = model

    print("Training Complete!")

    # Save weights, centroids, and scaler parameters
    json_path = os.path.join(OUTPUT_DIR, "hmm_emnist_weights.json")
    json_data = {"config": CONFIG, "models": {}}
    
    for label, model in trained_models.items():
        json_data["models"][label] = {
            "startprob": model.startprob_.tolist(),
            "transmat": model.transmat_.tolist(),
            "emissionprob": model.emissionprob_.tolist()
        }

    with open(json_path, "w") as f:
        json.dump(json_data, f, indent=4)

    np.savetxt(os.path.join(OUTPUT_DIR, "kmeans_centroids.csv"), kmeans.cluster_centers_, delimiter=",")
    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_mean.csv"), scaler.mean_, delimiter=",")
    np.savetxt(os.path.join(OUTPUT_DIR, "scaler_scale.csv"), scaler.scale_, delimiter=",")

    print(f"\nSaved updated weights, scaler parameters, and centroids to '{OUTPUT_DIR}'.")
