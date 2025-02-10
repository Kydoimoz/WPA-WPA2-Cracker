#!/bin/bash

echo "[+] Removing WPA/WPA2 Cracker..."
rm -rf $HOME/wpa-cracker

echo "[+] Removing installed packages..."
pkg uninstall python git wget curl -y
pip uninstall -r $HOME/wpa-cracker/requirements.txt -y

echo "[+] Cleaning up Termux..."
pkg autoclean && pkg clean

echo "[+] Uninstallation complete!"
