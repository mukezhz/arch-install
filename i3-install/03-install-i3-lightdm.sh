#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

#Core stuff i3
sudo pacman -S i3-wm i3lock i3status --noconfirm --needed

#lightdm stuffs
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed

echo "CREATING PRIVATE FOLDERS WE USE LATER"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

# enable lightdm
sudo systemctl enable lightdm