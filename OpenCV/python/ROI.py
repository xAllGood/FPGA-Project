import cv2 as c
from PIL import Image
import numpy as np

img_path=r'/mnt/c/Users/harim/Pictures/hari7.png'

img = c.imread(img_path)
h ,w = img.shape[:2]

## Gray conversion
gray = c.cvtColor(img, c.COLOR_BGR2GRAY)
c.imshow('gray',gray)

## Otsu Threshold
otsu_thresh, _ = c.threshold(gray, 0, 255, c.THRESH_BINARY + c.THRESH_OTSU)

adjusted_thresh = otsu_thresh + 15

_, binarized_img = c.threshold(gray, adjusted_thresh, 255, c.THRESH_BINARY)
c.imshow('Otsu thresh',binarized_img)

## Gaussian blue
blurred = c.GaussianBlur(gray, (3,3), 0)

## canny edge

deno = c.Canny(blurred, 35, 95, apertureSize=3, L2gradient=True)
invert = c.bitwise_not(deno)

## normalized for FPGA

c.imshow('final out',invert)
output_path =r'/mnt/d/College/projects/vlsi_project/softwares/output/python/hari7otsu.jpeg'
#c.imwrite(output_path,invert)


c.waitKey(0)
c.destroyAllWindows()
