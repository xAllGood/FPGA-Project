import torch
import torch.nn as nn

NUM_CLASSES = 47

# 1. Paste the exact MICRO-CNN model architecture
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

# 2. Initialize the Micro-CNN model and load the weights
model = MicroCNN()
# map_location='cpu' ensures it loads safely for export regardless of GPU state
model.load_state_dict(torch.load("emnist_cnn_weights.pth", map_location='cpu'))
model.eval()

# 3. Create a dummy input tensor matching a single image shape
dummy_input = torch.randn(1, 1, 28, 28)

# 4. Export to ONNX
print("Exporting Micro-CNN model to ONNX...")
torch.onnx.export(
    model, 
    dummy_input, 
    "emnist_cnn_model.onnx", 
    export_params=True,
    opset_version=14,
    dynamo=False,            
    input_names=['input'], 
    output_names=['output'],
    dynamic_axes={
        'input': {0: 'batch_size'}, 
        'output': {0: 'batch_size'}
    }
)
print("Micro-CNN Model exported to ONNX successfully!")