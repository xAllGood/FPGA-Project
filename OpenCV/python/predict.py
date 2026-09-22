"""
predict.py

Loads the trained Keras model and classifies ONE custom handwritten
character photo (e.g. a phone photo of a letter/digit you wrote on paper).

Usage:
    python predict.py --model model/emnist_cnn.keras --image my_letter.jpg
"""

import argparse

import numpy as np
import tensorflow as tf

from preprocess import load_and_preprocess, CHARACTERS


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="model/emnist_cnn.keras")
    ap.add_argument("--image", required=True, help="Path to your handwritten character photo")
    ap.add_argument("--threshold", type=int, default=100, help="Black/white cutoff (0-255)")
    args = ap.parse_args()

    model = tf.keras.models.load_model(args.model)

    x = load_and_preprocess(args.image, bw_threshold=args.threshold)
    probs = model.predict(x, verbose=0)[0]

    top5 = np.argsort(probs)[::-1][:5]
    print("Top-5 predictions:")
    for idx in top5:
        print(f"  {CHARACTERS[idx]:>2}  {probs[idx] * 100:6.2f}%")

    print(f"\nPredicted character: {CHARACTERS[int(np.argmax(probs))]}")


if __name__ == "__main__":
    main()
