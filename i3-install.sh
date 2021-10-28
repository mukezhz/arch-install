#!/bin/bash

# Install packages
sudo pacman -S --noconfirm xorg xorg-server 
sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm dunst dmenu rofi i3-wm i3lock i3status

# yay -S i3exit py3status

sudo pacman -S --noconfirm vlc firefox mpv nautilus
sudo pacman -S --noconfirm scrot lxappearance nitrogen picom playerctl archlinux-wallpaper
sudo pacman -S --noconfirm terminator alacritty rxvt-unicode
sudo pacman -S --noconfirm arc-gtk-theme

# Install extra essential packages
# sudo pacman -S --noconfirm pavucontrol acpid acpi acpi_call tlp firewalld ntfs-3g
sudo pacman -S acpi


# sudo systemctl enable NetworkManager
# sudo systemctl enable bluetooth
# sudo systemctl enable sshd
# sudo systemctl enable avahi-daemon
# sudo systemctl enable tlp 
# sudo systemctl enable reflector.timer
# sudo systemctl enable firewalld
# sudo systemctl enable acpid
sudo systemctl enable lightdm

printf "\e[1;32mDone! you can now reboot.\e[0m\n"
