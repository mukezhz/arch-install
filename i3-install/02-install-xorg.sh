#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

# if you are in a base system with no xserver and desktop...
# this will install xserver

sudo pacman -S xorg xorg-server xorg-apps xorg-xinit xorg-twm --noconfirm --needed
# sudo pacman -S xf86-video-intel --noconfirm --needed