from capture_frame import capture
from detect_roboflow import detect
from gimbal_control import center_gimbal
from save_alert import save_alert
from generate_kml import update_kml

frame = capture()
detections = detect(frame)

for det in detections:
    if det['confidence'] > 0.5:
        center_gimbal()
        save_alert(frame, det)
        update_kml(det)
