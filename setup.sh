#!/bin/bash
set -e  # stop kalau ada error

echo "=== Update & Upgrade ==="
sudo apt update && sudo apt upgrade -y

echo "=== Install essential tools ==="
sudo apt install -y \
    curl \
    wget \
    git \
    build-essential \
    unzip \
    zip \
    btop \
    software-properties-common \
    ripgrep \
    fzf \
    neovim

echo "=== Cleaning up ==="
sudo apt autoremove -y
sudo apt clean

echo "=== DONE! ==="

