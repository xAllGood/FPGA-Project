import cv2
import mediapipe as mp
import serial
import time

# --- Connect to ESP32 ---
esp = serial.Serial('COM5', 115200, timeout=1)
time.sleep(2)
print("✅ Connected to ESP32")

mp_face_mesh = mp.solutions.face_mesh
face_mesh = mp_face_mesh.FaceMesh(refine_landmarks=True)
EYE_AR_THRESH = 0.25
CLOSED_FRAMES = 0
SLEEP_TRIGGER = 15  # about 3 seconds

def get_ear(landmarks, eye_indices):
    from math import hypot
    p1, p2, p3, p4, p5, p6 = [landmarks[i] for i in eye_indices]
    A = hypot(p2.x - p6.x, p2.y - p6.y)
    B = hypot(p3.x - p5.x, p3.y - p5.y)
    C = hypot(p1.x - p4.x, p1.y - p4.y)
    return (A + B) / (2.0 * C)

cap = cv2.VideoCapture(0)
print("🎥 Camera started...")

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        break

    rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
    results = face_mesh.process(rgb)

    if results.multi_face_landmarks:
        landmarks = results.multi_face_landmarks[0].landmark
        left_eye = [33, 160, 158, 133, 153, 144]
        right_eye = [362, 385, 387, 263, 373, 380]

        ear = (get_ear(landmarks, left_eye) + get_ear(landmarks, right_eye)) / 2.0

        if ear < EYE_AR_THRESH:
            CLOSED_FRAMES += 1
            if CLOSED_FRAMES > SLEEP_TRIGGER:
                print("😴 Drowsiness detected → sending SLEEP")
                esp.write(b"SLEEP\n")
                CLOSED_FRAMES = 0
                time.sleep(5)  # allow ESP32 to stop/restart
        else:
            CLOSED_FRAMES = 0
            esp.write(b"AWAKE\n")

    cv2.imshow("Drowsiness Detection", frame)
    if cv2.waitKey(1) & 0xFF == 27:
        break

cap.release()
cv2.destroyAllWindows()
esp.close()
