#!/bin/bash

echo "[+] Updating package lists..."
pkg update -y && pkg upgrade -y

echo "[+] Installing required dependencies..."
pkg install python python-pip git wget curl -y

echo "[+] Cloning the WPA/WPA2 Cracker repository..."
git clone  https://github.com/Kydoimoz/WPA-WPA2-Cracker.git $HOME/wpa-cracker

echo "[+] Navigating to the tool directory..."
cd $HOME/wpa-cracker

echo "[+] Installing required Python modules..."
pip install -r requirements.txt

echo "[+] Setting up execution permissions..."
chmod +x wpa_cracker.py

echo "[+] Installation complete! Run the tool using: python wpa_cracker.py"
