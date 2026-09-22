"""
train.py

Trains the same CNN architecture as PuravG/EMNIST-Classifier's
"EMNIST Classifier Final.ipynb" notebook, but as a plain script you run
locally, with relative save paths instead of the original author's
hardcoded macOS paths.

Usage:
    pip install -r requirements.txt
    python train.py --epochs 20 --batch-size 1024 --dataset byclass

Outputs (into ./model/):
    model/emnist_cnn.keras      -> native Keras format (recommended)
    model/emnist_cnn.h5         -> legacy H5 format
    model/saved_model/          -> TF SavedModel dir (for tfjs / TF Serving)
"""

import argparse
import os

import numpy as np
import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from emnist import extract_training_samples, extract_test_samples


def build_model(num_classes: int) -> tf.keras.Model:
    model = tf.keras.Sequential([
        tf.keras.layers.Conv2D(32, (3, 3), activation="relu",
                                input_shape=(28, 28, 1), padding="same"),
        tf.keras.layers.MaxPooling2D((2, 2)),

        tf.keras.layers.Conv2D(64, (3, 3), activation="relu"),
        tf.keras.layers.MaxPooling2D((2, 2)),

        tf.keras.layers.Conv2D(128, (3, 3), activation="relu"),
        tf.keras.layers.MaxPooling2D((2, 2)),

        tf.keras.layers.Dropout(0.2),

        tf.keras.layers.Flatten(),
        tf.keras.layers.Dense(256, activation="relu"),
        tf.keras.layers.Dense(128, activation="relu"),
        tf.keras.layers.Dense(num_classes, activation="softmax"),
    ])
    return model


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dataset", default="byclass",
                     choices=["byclass", "bymerge", "balanced", "letters", "digits", "mnist"],
                     help="Which EMNIST split to train on (byclass = 62 classes, matches original repo).")
    ap.add_argument("--epochs", type=int, default=20)
    ap.add_argument("--batch-size", type=int, default=1024)
    ap.add_argument("--out-dir", default="model")
    args = ap.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)

    print(f"Downloading/loading EMNIST '{args.dataset}' split ...")
    train_images, train_labels = extract_training_samples(args.dataset)
    test_images, test_labels = extract_test_samples(args.dataset)
    num_classes = int(max(train_labels.max(), test_labels.max())) + 1
    print(f"train: {train_images.shape}, test: {test_images.shape}, classes: {num_classes}")

    train_images = tf.keras.utils.normalize(train_images, axis=1)
    test_images = tf.keras.utils.normalize(test_images, axis=1)
    train_images = np.expand_dims(train_images, axis=3)
    test_images = np.expand_dims(test_images, axis=3)

    train_datagen = ImageDataGenerator(rotation_range=15, width_shift_range=0.10, height_shift_range=0.10)
    train_datagen.fit(train_images)
    val_datagen = ImageDataGenerator()
    val_datagen.fit(test_images)

    model = build_model(num_classes)
    model.summary()
    model.compile(optimizer="adam",
                  loss=tf.keras.losses.SparseCategoricalCrossentropy(),
                  metrics=["accuracy"])

    model.fit(
        train_datagen.flow(train_images, train_labels, batch_size=args.batch_size),
        validation_data=val_datagen.flow(test_images, test_labels, batch_size=32),
        epochs=args.epochs,
    )

    scores = model.evaluate(test_images, test_labels)
    print(f"Test accuracy: {scores[1] * 100:.2f}%")

    keras_path = os.path.join(args.out_dir, "emnist_cnn.keras")
    h5_path = os.path.join(args.out_dir, "emnist_cnn.h5")
    saved_model_path = os.path.join(args.out_dir, "saved_model")

    model.save(keras_path)
    model.save(h5_path)
    model.export(saved_model_path)  # SavedModel dir, useful for tfjs conversion etc.

    print(f"\nSaved:\n  {keras_path}\n  {h5_path}\n  {saved_model_path}/")


if __name__ == "__main__":
    main()
