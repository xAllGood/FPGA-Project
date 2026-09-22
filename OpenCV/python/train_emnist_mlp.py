import os
import torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms
from torch.utils.data import DataLoader

# ==========================================
# 1. Pipeline Configuration
# ==========================================
DATA_DIR = "./data"
OUTPUT_DIR = "./output_weights_emnist_mlp"
INPUT_DIM = 28 * 28  # 784 features for standard EMNIST images
HIDDEN_DIM = 64
NUM_CLASSES = 26     # A-Z
EPOCHS = 10
BATCH_SIZE = 64
LEARNING_RATE = 0.005

os.makedirs(OUTPUT_DIR, exist_ok=True)

# ==========================================
# 2. Data Loading (EMNIST Letters)
# ==========================================
print("Loading EMNIST Letters dataset...")
# EMNIST letters split labels are 1-26. We adjust them to 0-25.
transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Lambda(lambda x: torch.rot90(x, -1, [1, 2])), # EMNIST orientation correction
    transforms.Lambda(lambda x: torch.fliplr(x))
])

train_dataset = torchvision.datasets.EMNIST(
    root=DATA_DIR, split="letters", train=True, download=True, transform=transform
)

# Fix label mapping from 1-26 to 0-25
train_dataset.targets = train_dataset.targets - 1
train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True)

# ==========================================
# 3. Tiny MLP Architecture
# ==========================================
class EmnistTinyMLP(nn.Module):
    def __init__(self, input_dim, hidden_dim, num_classes):
        super().__init__()
        self.fc1 = nn.Linear(input_dim, hidden_dim)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(hidden_dim, num_classes)

    def forward(self, x):
        x = x.view(x.size(0), -1)  # Flatten 28x28 to 784
        out = self.fc1(x)
        out = self.relu(out)
        out = self.fc2(out)
        return out

# ==========================================
# 4. INT8 Quantization & .mem Export
# ==========================================
def export_to_mem(tensor_weights, filename, output_dir):
    filepath = os.path.join(output_dir, filename)
    
    w_min = tensor_weights.min().item()
    w_max = tensor_weights.max().item()
    scale = max(abs(w_min), abs(w_max))
    if scale == 0:
        scale = 1.0
        
    quantized = torch.round(tensor_weights / scale * 127.0).clamp(-128, 127).to(torch.int32)
    
    with open(filepath, "w") as f:
        for val in quantized.flatten():
            f.write(f"{val.item() & 0xFF:02x}\n")
            
    print(f"Exported quantized weights to: {filepath}")

# ==========================================
# 5. Training Loop
# ==========================================
if __name__ == "__main__":
    model = EmnistTinyMLP(INPUT_DIM, HIDDEN_DIM, NUM_CLASSES)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=LEARNING_RATE)

    print(f"\nTraining MLP on EMNIST Letters for {EPOCHS} epochs...")
    model.train()
    
    for epoch in range(EPOCHS):
        running_loss = 0.0
        correct = 0
        total = 0
        
        for images, labels in train_loader:
            optimizer.zero_grad()
            outputs = model(images)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            running_loss += loss.item() * images.size(0)
            _, predicted = outputs.max(1)
            total += labels.size(0)
            correct += predicted.eq(labels).sum().item()

        epoch_loss = running_loss / total
        epoch_acc = (correct / total) * 100
        print(f"Epoch [{epoch+1}/{EPOCHS}] -> Loss: {epoch_loss:.4f} | Accuracy: {epoch_acc:.2f}%")

    print("\nTraining complete! Exporting INT8 weights to Verilog ROM (.mem) files...")
    
    w1 = model.fc1.weight.data
    b1 = model.fc1.bias.data
    w2 = model.fc2.weight.data
    b2 = model.fc2.bias.data

    export_to_mem(w1, "w1.mem", OUTPUT_DIR)
    export_to_mem(b1, "b1.mem", OUTPUT_DIR)
    export_to_mem(w2, "w2.mem", OUTPUT_DIR)
    export_to_mem(b2, "b2.mem", OUTPUT_DIR)
  # (At the end of train_emnist_mlp.py, right after export_to_mem)
    torch.save(model.state_dict(), os.path.join(OUTPUT_DIR, "emnist_mlp.pth"))
    print(f"Saved PyTorch model checkpoint to: {os.path.join(OUTPUT_DIR, 'emnist_mlp.pth')}")
    print(f"\nFiles generated successfully in '{OUTPUT_DIR}'!")
