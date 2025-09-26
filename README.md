# 🚁 Drone AI – Smart Pollination & Corrosion Detection

## 📌 Projek Overview
Projek ini membangunkan sistem **AI + Drone** menggunakan:
- 🛠 **Raspberry Pi 5** + Coral TPU
- 🎥 **SIYI Mini A8 4K Camera**
- 📡 **Skydroid H12 Pro Controller**
- 🔎 AI Model: Object detection untuk **pollen recognition** & **corrosion detection**

Drone ini digunakan untuk **offshore rig inspection** & **smart palm pollination surveillance**.

---

## 🔧 Features
- ✅ Real-time object detection (YOLO model via Roboflow)
- ✅ Auto alert → Telegram + Google Sheets logging
- ✅ KML geo-mapping (Google Earth + Leaflet viewer)
- ✅ Drone autonomous flight (CUAV + RPLIDAR obstacle avoidance)

---

ai-drone-pollination/
│
├── README.md                # Overview projek + cara install + link Roboflow model
├── requirements.txt         # Python dependencies
├── .gitignore               # Ignore __pycache__, .env, dataset besar
│
├── config/                  # Semua fail konfigurasi
│   ├── roboflow_config.json # API key, model URL, version
│   ├── camera_config.yaml   # Camera settings (resolution, framerate)
│   ├── gimbal_config.yaml   # SIYI IP, yaw/pitch default
│   └── system_config.yaml   # GPS source, log folder, Telegram token, dsb
│
├── scripts/                 # Skrip-skrip main
│   ├── capture_frame.py     # Ambil gambar/video dari Picamera2
│   ├── detect_roboflow.py   # Run inference (Hosted API / Self-hosted)
│   ├── gimbal_control.py    # Kawal yaw/pitch/zoom SIYI A8 Mini
│   ├── save_alert.py        # Simpan snapshot + metadata JSON
│   ├── generate_kml.py      # Append / overwrite daily KML
│   ├── notify_telegram.py   # Hantar alert ke Telegram
│   ├── upload_drive.py      # Auto upload gambar ke Google Drive
│   └── main.py              # Main orchestrator (import semua modul atas)
│
├── services/                # Systemd service atau docker
│   └── ai-drone.service     # Autostart pada boot (optional)
│
├── web/                     # Paparan data dalam browser
│   ├── viewer.html          # Papar peta (Leaflet) + overlay KML
│   └── style.css
│
├── data/                    # Data output
│   ├── alerts/              # Semua snapshot & json log
│   ├── kml/                 # KML harian + sejarah
│   └── history.jsonl        # Semua event detection
│
└── docs/                    # Knowledge base / dokumentasi
    ├── setup_pi.md          # Cara setup Raspberry Pi + venv
    ├── setup_gimbal.md      # Cara setup SIYI A8 (IP config, test yaw/pitch)
    ├── roboflow_guide.md    # Cara train/convert model, guna inference API
    ├── architecture.md      # Workflow diagram + high level design
    └── troubleshooting.md   # Known issues & fix


---

## 🚀 Getting Started
### Clone repo:
```bash
git clone https://github.com/<username>/<repo>.git
cd <repo>
