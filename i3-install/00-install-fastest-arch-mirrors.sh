#!/bin/bash

sudo pacman -Syyu --noconfirm

# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector rsync

# finding the fastest archlinux servers
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

cat /etc/pacman.d/mirrorlist

sudo pacman -Syu