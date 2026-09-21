import csv

input_file = r'/mnt/d/College/Projects/VLSI_Project/Softwares/OpenCV/python/mem/image7.mem'
output_file = '/mnt/d/College/Projects/VLSI_Project/Softwares/OpenCV/python/mem/csv/131x78.csv'

width = 131
height = 78

with open(input_file, "r") as f:
    pixels = [line.strip() for line in f if line.strip()]
matrix = [pixels[i * width : (i + 1) * width] for i in range(height)]
with open(output_file, "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerows(matrix)

print(  f"Successfully written {len(matrix)} rows and {len(matrix[0])} columns to {output_file}")
