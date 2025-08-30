# Autonomous-Dron-dengan-lensa-AI_Transformasi-Pengecaman-dan-Pemetaan-Pendebungaan-Kelapa-Sawit
AI Drone sistem: detect debunga sawit via kamera, simpan ke MicroSD, auto-upload gambar alert ke Google Drive &amp; push notifikasi ke Telegram + log Google Sheets. Lokasi pokok direkod (lat/long) &amp; mapping KML harian utk Google Earth.

Intro projek (AI-Drone untuk pemetaan & pengecaman pendebungaan kelapa sawit).

Hardware digunakan: Raspberry Pi 5, CUAV flight controller, SIYI Mini A8 camera, RPLIDAR C1, Skydroid H12 Pro.

Software stack: Python 3.11, OpenCV, YOLOv8, Roboflow, LeafletJS, Telegram API, Google Drive API.

Installation guide: clone repo → python3 -m venv venv → pip install -r requirements.txt.

Run: python src/main.py.

Output: Alert ke Telegram + Gambar simpan ke Drive + KML update + Viewer map.
