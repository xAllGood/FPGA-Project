import os
import cv2 as c
import numpy as np

# ------------------------------------------------------------------
# STAGE 1: Load image & basic preprocessing
# ------------------------------------------------------------------
img_path = r"/mnt/c/Users/harim/Pictures/hari5.jpeg"
img = c.imread(img_path)
h, w = img.shape[:2]

gray = c.cvtColor(img, c.COLOR_BGR2GRAY)

# Otsu thresholding
otsu_thresh, _ = c.threshold(gray, 0, 255, c.THRESH_BINARY + c.THRESH_OTSU)
adjusted_thresh = otsu_thresh + 15
_, binarized_img = c.threshold(gray, adjusted_thresh, 255, c.THRESH_BINARY)

# Canny Edge Detection
blurred = c.GaussianBlur(gray, (3, 3), 0)
edges = c.Canny(blurred, 35, 95, apertureSize=3, L2gradient=True)
invert = c.bitwise_not(edges)

# ------------------------------------------------------------------
# STAGE 2: Word segmentation via Morphological Dilation & Contours
# ------------------------------------------------------------------
# Wide kernel joins nearby character edges into connected word blobs
kernel = c.getStructuringElement(c.MORPH_RECT, (15, 5))
dilated = c.dilate(edges, kernel, iterations=1)

contours, _ = c.findContours(
    dilated, c.RETR_EXTERNAL, c.CHAIN_APPROX_SIMPLE
)

# Filter tiny noise contours and sort left-to-right, top-to-bottom
boxes = [c.boundingRect(cnt) for cnt in contours]
boxes = [b for b in boxes if b[2] > 10 and b[3] > 10]  # min width/height filter
boxes = sorted(
    boxes, key=lambda b: (b[1] // 40, b[0])
)  # rough line grouping then x-order

# ------------------------------------------------------------------
# STAGE 3: Draw + save word boxes, crop each word
# ------------------------------------------------------------------
output_dir = (
    r"/mnt/d/College/projects/vlsi_project/softwares/output/python/words"
)
os.makedirs(output_dir, exist_ok=True)

boxed_img = img.copy()
for i, (x, y, bw, bh) in enumerate(boxes):
    c.rectangle(boxed_img, (x, y), (x + bw, y + bh), (0, 255, 0), 2)
    word_crop = gray[y : y + bh, x : x + bw]
    c.imwrite(os.path.join(output_dir, f"word_{i:03d}.jpeg"), word_crop)

# ------------------------------------------------------------------
# Save all stage outputs
# ------------------------------------------------------------------
out_base = r"/mnt/d/College/projects/vlsi_project/softwares/output/python/"
os.makedirs(out_base, exist_ok=True)

c.imwrite(os.path.join(out_base, "hari4canny1.jpeg"), invert)
c.imwrite(os.path.join(out_base, "word_boxes.jpeg"), boxed_img)

print(f"Found {len(boxes)} word regions. Crops saved to: {output_dir}")

# ------------------------------------------------------------------
# Display results
# ------------------------------------------------------------------
c.imshow("gray", gray)
c.imshow("Otsu thresh", binarized_img)
c.imshow("Canny (inverted)", invert)
c.imshow("Word segmentation", boxed_img)
c.waitKey(0)
c.destroyAllWindows()
