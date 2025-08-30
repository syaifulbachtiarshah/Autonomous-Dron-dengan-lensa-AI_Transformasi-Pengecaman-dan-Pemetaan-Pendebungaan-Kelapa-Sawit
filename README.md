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

## 📂 Folder Structure
├── ai_models/ # Model .pt / .tflite files
├── drone_scripts/ # Python codes for AI inference & drone integration
├── data/ # Sample datasets / logs
├── .github/workflows/ # CI/CD (Lint + Test)
└── README.md

---

## 🚀 Getting Started
### Clone repo:
```bash
git clone https://github.com/<username>/<repo>.git
cd <repo>
