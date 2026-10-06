import torch
import torch.nn as nn
import torch.optim as optim
from torch.optim.lr_scheduler import ReduceLROnPlateau
from torchvision import datasets, transforms
from torch.utils.data import DataLoader

# 1. Hyperparameters
BATCH_SIZE = 64
LEARNING_RATE = 0.001
EPOCHS = 25      # Increased to give the Micro-CNN more time to learn
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
MODEL_SAVE_PATH = "emnist_cnn_weights.pth"  

# 2. Data Loading & Preprocessing
# Add slight rotation and shifting to training data to improve robustness
transform_train = transforms.Compose([
    transforms.RandomRotation(10),
    transforms.RandomAffine(degrees=0, translate=(0.1, 0.1)),
    transforms.ToTensor(),
    transforms.Lambda(lambda x: x.transpose(1, 2)), 
    transforms.Normalize((0.5,), (0.5,))
])

# Test data should NOT be augmented, only normalized and transposed
transform_test = transforms.Compose([
    transforms.ToTensor(),
    transforms.Lambda(lambda x: x.transpose(1, 2)), 
    transforms.Normalize((0.5,), (0.5,))
])

print("Downloading/Loading EMNIST Dataset...")
train_dataset = datasets.EMNIST(root='./data', split='balanced', train=True, transform=transform_train, download=True)
test_dataset = datasets.EMNIST(root='./data', split='balanced', train=False, transform=transform_test, download=True)

train_loader = DataLoader(dataset=train_dataset, batch_size=BATCH_SIZE, shuffle=True)
test_loader = DataLoader(dataset=test_dataset, batch_size=BATCH_SIZE, shuffle=False)

NUM_CLASSES = 47

# 3. Micro-CNN Architecture [4, 8, 24]
class MicroCNN(nn.Module):
    def __init__(self):
        super(MicroCNN, self).__init__()
        
        # First Convolutional Block (4 channels)
        self.conv1 = nn.Sequential(
            nn.Conv2d(in_channels=1, out_channels=4, kernel_size=3),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2)
        )
        
        # Second Convolutional Block (8 channels)
        self.conv2 = nn.Sequential(
            nn.Conv2d(in_channels=4, out_channels=8, kernel_size=3),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2)
        )
        
        self.flatten = nn.Flatten()
        
        # Dense Layers (24 neurons)
        self.fc = nn.Sequential(
            nn.Linear(8 * 5 * 5, 24),
            nn.ReLU(),
            nn.Linear(24, NUM_CLASSES)
        )
        
    def forward(self, x):
        x = self.conv1(x)
        x = self.conv2(x)
        x = self.flatten(x)
        logits = self.fc(x)
        return logits

# Initialize the new Micro-CNN model
model = MicroCNN().to(DEVICE)

# Print total parameters 
total_params = sum(p.numel() for p in model.parameters())
print(f"\nModel initialized! Total Parameters: {total_params:,}\n")

# 4. Loss Function, Optimizer, and Scheduler
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=LEARNING_RATE)
# Drops learning rate by half if validation accuracy stops improving for 3 epochs
scheduler = ReduceLROnPlateau(optimizer, mode='max', factor=0.5, patience=3)

# 5. Training Loop
print(f"Training on EMNIST using: {DEVICE}")
for epoch in range(EPOCHS):
    model.train()
    running_loss = 0.0
    for batch_idx, (data, targets) in enumerate(train_loader):
        data, targets = data.to(DEVICE), targets.to(DEVICE)
        
        scores = model(data)
        loss = criterion(scores, targets)
        
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        running_loss += loss.item()
        
    # Validation step to update scheduler
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for data, targets in test_loader:
            data, targets = data.to(DEVICE), targets.to(DEVICE)
            scores = model(data)
            _, predictions = scores.max(1)
            correct += (predictions == targets).sum().item()
            total += targets.size(0)

    val_accuracy = (correct / total) * 100
    print(f"Epoch [{epoch+1}/{EPOCHS}] | Loss: {running_loss/len(train_loader):.4f} | Test Acc: {val_accuracy:.2f}%")
    
    # Step the scheduler based on test accuracy
    scheduler.step(val_accuracy)

# === SAVE MODEL WEIGHTS ===
print(f"\nSaving Micro-CNN model weights to {MODEL_SAVE_PATH}...")
torch.save(model.state_dict(), MODEL_SAVE_PATH)
print("Weights saved successfully!")
