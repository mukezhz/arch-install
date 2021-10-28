#!/bin/bash

# Setup the bootloader

# install bootloader
bootctl install

# generate the arch linux entry config

cat > /boot/loader/loader.conf << EOF
timeout 5
console-mode max
default arch.conf
EOF

cat > /boot/loader/entries/arch.conf << EOF
title        Arch Linux
linux        /vmlinuz-linux
initrd       /intel-ucode.img
initrd       /initramfs-linux.img
options      root="LABEL=arch" rw
EOF

cat > /boot/loader/entries/arch-fallback.conf << EOF
title        Arch Linux (fallback initramfs)
linux        /vmlinuz-linux
initrd       /intel-ucode.img
initrd       /initramfs-linux-fallback.img
options      root="LABEL=arch" rw
EOF

# systemd networkd configurations

cat > /etc/systemd/network/25-wireless.network << EOF
[Match]
Name=wlan0

[Network]
DHCP=yes 
EOF

# enable services
systemctl enable iwd
systemctl enable systemd-networkd
systemctl enable systemd-resolved

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"