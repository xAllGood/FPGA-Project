import cv2
import numpy as np

# 1. Load image
img = cv2.imread("/mnt/c/Users/harim/Pictures/hari3.jpeg")
if img is None:
    raise FileNotFoundError("Check your image path.")

# 2. Convert to grayscale and blur to remove text details
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blurred = cv2.GaussianBlur(gray, (5, 5), 0)

# 3. Threshold to separate the bright paper from the dark desk
_, thresh = cv2.threshold(blurred, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

# 4. Find all outlines (contours) in the image
contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

# 5. Get the single largest contour (which is the sheet of paper)
largest_contour = max(contours, key=cv2.contourArea)

# 6. Get the rectangular boundaries of that paper block
x, y, w, h = cv2.boundingRect(largest_contour)

# 7. Crop the original image to those boundaries
cropped_paper = img[y:y+h, x:x+w]

# Save the extracted paper
cv2.imwrite("cropped_paper.jpg", cropped_paper)
