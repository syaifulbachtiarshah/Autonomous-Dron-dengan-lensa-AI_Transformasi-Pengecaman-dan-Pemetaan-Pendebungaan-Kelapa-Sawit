#!/bin/bash
# run.sh
# Script untuk run projek dalam venv

# Exit kalau ada error
set -e

# Aktifkan venv
source venv/bin/activate

# Jalan main program (ubah kalau lain)
python main.py
