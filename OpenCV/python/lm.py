import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, Dataset
from torchvision import transforms
from datasets import load_dataset  # Requires: pip install datasets
from PIL import Image

# ==========================================
# 1. Define Model Architecture (Identical HW Footprint)
# ==========================================
class IAM_Cursive_CNN(nn.Module):
    def __init__(self, num_classes=80):
        super(IAM_Cursive_CNN, self).__init__()
        self.conv1 = nn.Conv2d(1, 32, kernel_size=3, padding=1)
        self.conv2 = nn.Conv2d(32, 64, kernel_size=3, padding=1)
        self.pool = nn.MaxPool2d(2, 2)
        self.relu = nn.ReLU()
        # Input 28x28 -> after 2 poolings: 7x7
        self.fc1 = nn.Linear(64 * 7 * 7, 128)
        self.fc2 = nn.Linear(128, num_classes)

    def forward(self, x):
        x = self.pool(self.relu(self.conv1(x)))
        x = self.pool(self.relu(self.conv2(x)))
        x = x.view(x.size(0), -1)
        x = self.relu(self.fc1(x))
        x = self.fc2(x)
        return x

# ==========================================
# 2. Custom IAM Dataset Wrapper
# ==========================================
class IAMIsolatedDataset(Dataset):
    def __init__(self, hf_dataset, transform=None):
        self.dataset = hf_dataset
        self.transform = transform

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        item = self.dataset[idx]
        image = item['image'].convert('L')  # Convert to Grayscale
        
        # Extract label character ASCII index
        label_char = item.get('label', '?') 
        label_idx = ord(label_char) % 80  # Map to index range

        if self.transform:
            image = self.transform(image)

        return image, label_idx

# ==========================================
# 3. Local Training & Weight Extraction
# ==========================================
def train_iam_model(epochs=3, batch_size=64, lr=0.01):
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    print(f"Training on device: {device}")

    # Standard preprocessing matching EMNIST resolution
    transform = transforms.Compose([
        transforms.Resize((28, 28)),
        transforms.ToTensor(),
        transforms.Normalize((0.1307,), (0.3081,))
    ])

    print("Loading IAM dataset from HuggingFace...")
    # Load IAM lines/words dataset stream
    raw_dataset = load_dataset("teklia/iam_words", split="train")
    
    train_dataset = IAMIsolatedDataset(raw_dataset, transform=transform)
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)

    # Initialize model with IAM character class space
    local_model = IAM_Cursive_CNN(num_classes=80).to(device)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.SGD(local_model.parameters(), lr=lr, momentum=0.9)

    # Training Loop
    local_model.train()
    for epoch in range(epochs):
        running_loss = 0.0
        for batch_idx, (data, target) in enumerate(train_loader):
            data, target = data.to(device), target.to(device)
            
            optimizer.zero_grad()
            output = local_model(data)
            loss = criterion(output, target)
            loss.backward()
            optimizer.step()
            
            running_loss += loss.item()

            if batch_idx % 100 == 0:
                print(f"Epoch {epoch+1} | Batch {batch_idx}/{len(train_loader)} | Loss: {loss.item():.4f}")

    # Save local weights
    save_path = "/mnt/d/College/Projects/VLSI_Project/Softwares/output/python/local_mode/lam_local_model_weights.pt"
    torch.save(local_model.state_dict(), save_path)
    print(f"\nLocal model weights saved successfully to '{save_path}'")

if __name__ == "__main__":
    train_iam_model(epochs=3)
