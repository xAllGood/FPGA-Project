import cv2 as c
from PIL import Image
import numpy as np

img_path=r'/mnt/c/Users/harim/Pictures/hari3.jpeg'

img = c.imread(img_path)
h ,w = img.shape[:2]
gray = c.cvtColor(img, c.COLOR_BGR2GRAY)

blurred = c.GaussianBlur(gray, (3,3), 0)

deno = c.Canny(blurred, 35, 95, apertureSize=3, L2gradient=True)
invert = c.bitwise_not(deno)

c.imwrite('Output.jpeg',invert)
image1 = Image.open('/mnt/c/Users/harim/Pictures/hari.png').convert('L')
pixels = np.array(image1).flatten()

with open('image.mem','w') as f:
    for pix in pixels:
        f.write(f"{pix:02x}\n")

print(f"Done! Total pixels: {len(pixels)} (Dimensions: {image1.size[0]}x{image1.size[1]})")

c.waitKey(0)
c.destroyAllWindows()
