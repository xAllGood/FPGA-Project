import cv2 as c
from PIL import Image
import numpy as np

img_path = r'/mnt/c/Users/harim/Pictures/hari5.jpeg'

img = c.imread(img_path)
h, w = img.shape[:2]

## 1. Gray conversion (Using multi-ink channel min extraction)
gray = np.min(img, axis=2)
c.imshow('gray', gray)

## 2. === NEW: 2D DISCRETE WAVELET TRANSFORM (Haar Wavelet) ===
# Standardize dimensions to even sizes for perfect 2x2 downsampling
h_even, w_even = h - (h % 2), w - (w % 2)
gray_even = gray[:h_even, :w_even].astype(np.float32)

# Decompose the pixel grid into 2x2 hardware streaming blocks
top_left     = gray_even[0::2, 0::2]
top_right    = gray_even[0::2, 1::2]
bottom_left  = gray_even[1::2, 0::2]
bottom_right = gray_even[1::2, 1::2]

# Compute the LL Approximation sub-band (Averages out paper noise, retains geometry)
# In Verilog, this is done via basic additions and a logical right-shift: (A+B+C+D) >> 2
LL = (top_left + top_right + bottom_left + bottom_right) / 4.0
dwt_gray = np.uint8(np.clip(LL, 0, 255))
c.imshow('DWT LL Approximation', dwt_gray)

## 3. Otsu Threshold on DWT space
otsu_thresh, _ = c.threshold(dwt_gray, 0, 255, c.THRESH_BINARY + c.THRESH_OTSU)
adjusted_thresh = otsu_thresh + 15

_, binarized_img = c.threshold(dwt_gray, adjusted_thresh, 255, c.THRESH_BINARY)
c.imshow('Otsu thresh', binarized_img)

## 4. Gaussian blur on compressed space
blurred = c.GaussianBlur(dwt_gray, (3, 3), 0)

## 5. Canny edge detection
deno = c.Canny(blurred, 35, 95, apertureSize=3, L2gradient=True)
invert = c.bitwise_not(deno)

# Display and write the final compressed edge map to your output directory
c.imshow('final out', invert)
output_path = r'/mnt/d/College/projects/vlsi_project/softwares/output/python/haridwt_canny.jpeg'
c.imwrite(output_path, invert)

c.waitKey(0)
c.destroyAllWindows()
