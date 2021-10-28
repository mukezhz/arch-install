#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

#Network

sudo pacman -S networkmanager --noconfirm --needed
sudo pacman -S network-manager-applet --noconfirm --needed

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service