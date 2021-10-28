#!/bin/bash

set -e 
sudo pacman -Syyu

echo "INSTALLING ACCESSORIES"
sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed qalculate-gtk
sudo pacman -S --noconfirm --needed scrot	

#wallpapers
sudo pacman -S --noconfirm --needed archlinux-wallpaper

# theme 
sudo pacman -S --noconfirm --needed arc-gtk-theme

# icon-theme
sudo pacman -S --noconfirm --needed papirus-icon-theme


# echo "INSTALLING GRAPHICS"
# sudo pacman -S --noconfirm --needed gimp
# sudo pacman -S --noconfirm --needed inkscape
# sudo pacman -S --noconfirm --needed ristretto
# sudo pacman -S --noconfirm --needed gpick

echo "INSTALLING DEVELOPMENT"
sudo pacman -S --noconfirm --needed vim


echo "INSTALLING INTERNET"
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed qbittorrent

echo "INSTALLING MULTIMEDIA"
sudo pacman -S --noconfirm --needed vlc mpv
sudo pacman -S --noconfirm --needed simplescreenrecorder

# stuffs
sudo pacman -S --noconfirm --needed rxvt-unicode 
sudo pacman -S --noconfirm --needed dunst 
sudo pacman -S --noconfirm --needed picom  
sudo pacman -S --noconfirm --needed dmenu  
sudo pacman -S --noconfirm --needed feh 
sudo pacman -S --noconfirm --needed nitrogen 
sudo pacman -S --noconfirm --needed rofi 
sudo pacman -S --noconfirm --needed lxappearance 
sudo pacman -S --noconfirm --needed nautilus 
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed xdo
sudo pacman -S --noconfirm --needed xdotool
sudo pacman -S --noconfirm --needed unrar zip unzip sharutils  uudeview  arj cabextract file-roller
sudo pacman -S --noconfirm --needed arandr

# acpi
sudo pacman -S --noconfirm --needed acpi
