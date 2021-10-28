#!/bin/bash

#Synchronise pacman 
sudo pacman -S --needed reflector rsync
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syyu 