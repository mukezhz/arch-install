#!/bin/bash

hostname=host_name
localuser=user_name

ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc

sed -i '177s/.//' /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "$hostname" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 $hostname.localdomain $hostname" >> /etc/hosts
echo root:password | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

# pacman -Syy

# pacman -S grub efibootmgr mtools dosfstools os-prober

# grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
# grub-mkconfig -o /boot/grub/grub.cfg

useradd -m $localuser
echo $localuser:password | chpasswd
usermod -aG wheel $localuser

#install sudo before executing this command
echo "$localuser ALL=(ALL) ALL" >> /etc/sudoers.d/$localuser

printf "\e[1;32mDone! Execute script systemd.\e[0m"