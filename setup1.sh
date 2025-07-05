#!/bin/bash

echo "[*] Set locale (Bahasa Indonesia)..."
export LANG=id_ID.UTF-8
export LC_ALL=id_ID.UTF-8

echo "[*] Set timezone manual ke Asia/Jakarta..."
export TZ=Asia/Jakarta

echo "[*] Tambahkan ke .bashrc agar permanen..."
echo 'export LANG=id_ID.UTF-8' >> ~/.bashrc
echo 'export LC_ALL=id_ID.UTF-8' >> ~/.bashrc
echo 'export TZ=Asia/Jakarta' >> ~/.bashrc

echo "[✓] Selesai. Coba cek locale & jam:"
locale
date
