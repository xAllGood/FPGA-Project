"""
preprocess.py

Shared image-preprocessing for a custom, real-world handwritten character
photo so it matches what the EMNIST-trained CNN expects.

EMNIST images are: 28x28, single channel, WHITE strokes on a BLACK
background, pixel values normalised.  A photo of something written on
paper is normally the opposite (dark strokes on a light background), so
this module binarises, inverts, and resizes it, then centers the glyph
the way the mnist/emnist package delivers samples.
"""

import cv2
import numpy as np


def load_and_preprocess(image_path: str, img_size: int = 28,
                         bw_threshold: int = 100) -> np.ndarray:
    """
    Load a user photo of a single handwritten character and turn it into
    a (1, 28, 28, 1) float32 array ready for model.predict().

    Steps (mirrors the original notebook's approach, cleaned up):
      1. Read as grayscale.
      2. Threshold to pure black/white so background noise/shadows drop out.
      3. Invert (EMNIST wants white ink on black background).
      4. Resize to 28x28.
      5. Normalize the same way training data was normalized
         (tf.keras.utils.normalize behavior: L2-normalize along axis=1).
    """
    img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
    if img is None:
        raise FileNotFoundError(f"Could not read image at: {image_path}")

    # Binarize: anything darker than threshold -> ink (0), else background (255)
    _, bw = cv2.threshold(img, bw_threshold, 255, cv2.THRESH_BINARY)

    # Invert so strokes are white (255) on black (0), matching EMNIST
    #inverted = cv2.bitwise_not(bw)

    resized = cv2.resize(bw, (img_size, img_size), interpolation=cv2.INTER_AREA)

    arr = np.expand_dims(resized, axis=0).astype("float32")  # (1, 28, 28)

    # Same normalization the training notebook used
    norm = _keras_style_normalize(arr, axis=1)

    return np.expand_dims(norm, axis=3)  # (1, 28, 28, 1)


def _keras_style_normalize(x: np.ndarray, axis: int = 1) -> np.ndarray:
    """
    Reimplements tf.keras.utils.normalize (L2 norm along `axis`) without
    requiring tensorflow to be imported just for this one call.
    """
    norm = np.linalg.norm(x, ord=2, axis=axis, keepdims=True)
    norm[norm == 0] = 1.0
    return x / norm


# EMNIST 'byclass' label order: 10 digits, 26 upper, 26 lower
CHARACTERS = list("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
