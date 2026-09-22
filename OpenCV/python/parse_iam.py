import os
import xml.etree.ElementTree as ET
from PIL import Image

def parse_iam_xml_and_extract(xml_path, words_img_dir, output_base_dir):
    """
    Parses IAM XML files to map word bounding boxes/transcripts 
    and sort cutouts into character/word folders.
    """
    tree = ET.parse(xml_path)
    root = tree.getroot()

    os.makedirs(output_base_dir, exist_ok=True)

    # Iterate through handwritten lines and words in the XML
    for word_elem in root.iter('word'):
        word_text = word_elem.attrib.get('text')
        word_id = word_elem.attrib.get('id')
        
        if not word_text or not word_id:
            continue

        # IAM word image path structure: e.g., a01/a01-000u/a01-000u-00-00.png
        parts = word_id.split('-')
        part1 = parts[0]
        part2 = f"{parts[0]}-{parts[1]}"
        img_relative_path = os.path.join(part1, part2, f"{word_id}.png")
        src_img_path = os.path.join(words_img_dir, img_relative_path)

        if os.path.exists(src_img_path):
            # Target directory based on the first letter or exact string match
            first_char = word_text.lower()
            target_dir = os.path.join(output_base_dir, first_char)
            os.makedirs(target_dir, exist_ok=True)

            dst_img_path = os.path.join(target_dir, f"{word_id}.png")
            
            # Copy or symlink image to the structured training layout
            if not os.path.exists(dst_img_path):
                img = Image.open(src_img_path)
                img.save(dst_img_path)

print("XML Parser template ready. Point it to your extracted xml/ and words/ directories.")
