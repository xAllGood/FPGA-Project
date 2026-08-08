import cv2 as c
from PIL import Image
import numpy as np

img_path=r'/mnt/c/Users/harim/Pictures/hari1.jpeg'

img = c.imread(img_path)
h ,w = img.shape[:2]

## Gray conversion
gray = c.cvtColor(img, c.COLOR_BGR2GRAY)
c.imshow('gray',gray)

### Otsu Threshold
#otsu_thresh, _ = c.threshold(gray, 0, 255, c.THRESH_BINARY + c.THRESH_OTSU)
#
#adjusted_thresh = otsu_thresh + 15
#
#_, binarized_img = c.threshold(gray, adjusted_thresh, 255, c.THRESH_BINARY)
#c.imshow('Otsu thresh',binarized_img)
#
## Gaussian blue
blurred = c.GaussianBlur(gray, (3,3), 0)

## canny edge

deno = c.Canny(blurred, 35, 95, apertureSize=3, L2gradient=True)
invert = c.bitwise_not(deno)

## normalized for FPGA

c.imshow('final out',invert)
c.imwrite('/mnt/d/College/Projects/VLSI_Project/Softwares/OpenCV/output/python/hari1canny.jpeg',invert)
image1 = Image.open('/mnt/c/Users/harim/Pictures/hari.png').convert('L')
pixels = np.array(image1).flatten()

with open('image.mem','w') as f:
    for pix in pixels:
        f.write(f"{pix:02x}\n")

print(f"Done! Total pixels: {len(pixels)} (Dimensions: {image1.size[0]}x{image1.size[1]})")

c.waitKey(0)
c.destroyAllWindows()
