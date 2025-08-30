#!/bin/bash
set -e  # stop kalau ada error

echo "🚀 Auto setup starting..."

# Update & upgrade
sudo apt update && sudo apt upgrade -y

# Install asas
sudo apt install -y python3 python3-venv python3-pip git

# Clone repo kalau belum ada
if [ ! -d "$HOME/drone-ai-project" ]; then
    git clone https://github.com/ros-project/drone-ai-project.git ~/drone-ai-project
else
    echo "📂 Repo dah ada, pull update"
    cd ~/drone-ai-project && git pull
fi

cd ~/drone-ai-project

# Buat venv
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "✅ Virtual environment created"
fi

# Activate venv
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install dependencies
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "⚠️ Tak jumpa requirements.txt, skip install"
fi

echo "🎉 Setup complete! venv activated."
