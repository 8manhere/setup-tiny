#!/bin/bash

echo "[*] Update package list..."
sudo apt update -y

echo "[*] Install locales dan fonts..."
sudo apt install -y locales fonts-noto fonts-noto-cjk

echo "[*] Enable locale id_ID.UTF-8..."
sudo sed -i 's/# *id_ID.UTF-8 UTF-8/id_ID.UTF-8 UTF-8/' /etc/locale.gen

echo "[*] Generate locale..."
sudo locale-gen

echo "[*] Set default locale ke id_ID.UTF-8..."
sudo update-locale LANG=id_ID.UTF-8

echo "[*] Set timezone ke Asia/Jakarta..."
sudo timedatectl set-timezone Asia/Jakarta

echo "[*] Export environment variables..."
export LANG=id_ID.UTF-8
export LC_ALL=id_ID.UTF-8

echo "[✓] Selesai! Coba cek locale dan timezone:"
locale
timedatectl
