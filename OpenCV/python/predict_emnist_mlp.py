import os
import torch
import torch.nn as nn
import cv2
import numpy as np

# ==========================================
# 1. Configuration & Model Definition
# ==========================================
MODEL_PATH = "./output_weights_emnist_mlp/emnist_mlp.pth"
INPUT_DIM = 784
HIDDEN_DIM = 64
NUM_CLASSES = 26

class EmnistTinyMLP(nn.Module):
    def __init__(self, input_dim, hidden_dim, num_classes):
        super().__init__()
        self.fc1 = nn.Linear(input_dim, hidden_dim)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(hidden_dim, num_classes)

    def forward(self, x):
        x = x.reshape(x.size(0), -1)
        out = self.fc1(x)
        out = self.relu(out)
        out = self.fc2(out)
        return out

# ==========================================
# 2. Flexible Preprocessing (Tests both orientations)
# ==========================================
def preprocess_image(img_path, apply_emnist_transform=True):
    if not os.path.exists(img_path):
        raise FileNotFoundError(f"Image not found at: {img_path}")
        
    # Load as grayscale
    img = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)
    
    # Ensure white text on black background (EMNIST standard)
    if np.mean(img) > 127:
        img = 255 - img
        
    # Resize to 28x28 matching EMNIST dimensions
    img_resized = cv2.resize(img, (28, 28), interpolation=cv2.INTER_AREA)
    
    # Optional EMNIST dataset orientation fix
    if apply_emnist_transform:
        img_processed = np.fliplr(np.rot90(img_resized, -1))
    else:
        img_processed = img_resized

    # Normalize pixel values to [0.0, 1.0]
    img_float = np.ascontiguousarray(img_processed.astype(np.float32) / 255.0)
    tensor_img = torch.tensor(img_float, dtype=torch.float32).unsqueeze(0) # [1, 28, 28]
    
    return tensor_img

# ==========================================
# 3. Main Prediction Routine
# ==========================================
if __name__ == "__main__":
    CUSTOM_IMAGE_PATH = "/mnt/d/College/Projects/VLSI_Project/Softwares/output/python/a.png"

    if not os.path.exists(MODEL_PATH):
        raise FileNotFoundError(f"Model weights not found at {MODEL_PATH}. Run train_emnist_mlp.py first.")

    # Load model architecture and weights
    model = EmnistTinyMLP(INPUT_DIM, HIDDEN_DIM, NUM_CLASSES)
    model.load_state_dict(torch.load(MODEL_PATH))
    model.eval()

    print(f"\nAnalyzing Image: {CUSTOM_IMAGE_PATH}\n")

    # Test both with and without the EMNIST rotation/flip transform
    for use_transform in [True, False]:
        input_tensor = preprocess_image(CUSTOM_IMAGE_PATH, apply_emnist_transform=use_transform)

        with torch.no_grad():
            outputs = model(input_tensor)
            probabilities = torch.softmax(outputs, dim=1)
            confidence, predicted_idx = torch.max(probabilities, dim=1)

        predicted_char = chr(65 + predicted_idx.item())
        conf_pct = confidence.item() * 100

        mode_name = "With EMNIST Rotation/Flip" if use_transform else "Standard Upright (No Transform)"
        print(f"[{mode_name}]")
        print(f" -> Prediction : {predicted_char} ({conf_pct:.2f}% confidence)")
        
        # Print top 3 alternative guesses
        top3_prob, top3_idx = torch.topk(probabilities, 3, dim=1)
        print(" -> Top 3 Guesses:")
        for i in range(3):
            char_candidate = chr(65 + top3_idx[0][i].item())
            prob_candidate = top3_prob[0][i].item() * 100
            print(f"    {i+1}. '{char_candidate}' ({prob_candidate:.2f}%)")
        print("-" * 40)
