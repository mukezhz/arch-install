#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

#Sound
echo "INSTALLING SOUND SOFTWARE"
sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
# sudo pacman -S gstreamer --noconfirm --needed
# sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

echo "################################################################"
echo "#########   SOUND SOFTWARE SOFTWARE INSTALLED   ################"
echo "################################################################"

echo "INSTALLING BLUETOOTH SOFTWARE"

sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

echo "Adding the current user to the group rfkill :"
echo "In order to be able to switch blueberry on and off"
# https://github.com/linuxmint/blueberry/issues/75

sudo usermod  -a -G rfkill $USER

echo "################################################################"
echo "##############  BLUETOOTH SOFTWARE INSTALLED   #################"
echo "################################################################"