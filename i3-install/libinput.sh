#!/bin/bash

sudo pacman -Syyu --noconfirm

# synaptics input ho
sudo pacman -S --noconfirm --needed xf86-input-synaptics
sudo cp /usr/share/X11/xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d/

## libinput ho
# /etc/X11/xorg.conf.d/30-touchpad.conf
# Section "InputClass"
#     Identifier "touchpad"
#     Driver "libinput"
#     MatchIsTouchpad "on"
#     Option "Tapping" "on"
#     Option "NaturalScrolling" "true"
#     Option "HorizontalScrolling" "true"
# EndSection