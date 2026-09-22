import cv2
import numpy as np

image_path = '/mnt/c/Users/harim/Pictures/hari7.png'

# 1. Force load directly as grayscale (1 channel)
gray_image = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)

if gray_image is None:
    raise FileNotFoundError(f"Could not open image at {image_path}")

# 2. Print shape to verify it is exactly (1600, 1600) with NO 3rd dimension
print(f"Verified Image Shape: {gray_image.shape}") 

# 3. Flatten the single-channel matrix
pixels = gray_image.ravel()

# 4. Write hex values to memory file
with open('/mnt/d/College/Projects/VLSI_Project/Softwares/OpenCV/python/mem/image7.mem', 'w') as f:
    for pix in pixels:
        f.write(f"{pix:02x}\n")

print(f"Done! Total lines written to file: {len(pixels)}")
