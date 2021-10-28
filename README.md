# arch-base-uefi

## Prepare USB Drive
    `##dd bs=4M if=path/to/archlinux-version-x86_64.iso of=/dev/sdx conv=fsync oflag=direct status=progress`

## Boot the live environment

* Check that we are indeed using EFI  
    ```## ls /sys/firmware/efi/efivars```

* Check for internet connection    
    `## ping archlinux.org`
* Check synced time service    
    `## timedatectl set-ntp true` (check status with `## timedatectl status`)

## Partition the disk and format.
    Find your drive `## fdisk -l` or `## gdisk /dev/XXX`
    Make EFI partition 512M (ef00)
    Make SWAP partition 4G (8200)
    Make root partition 50G (8300)
    Make home partition "rest minus some space on SSD" (8300)
    
    `## mkfs.vfat /dev/sda1`

    `## mkswap /dev/sda2`
    `## swapon /dev/sda2`

    `## mkfs.ext4 /dev/sda3 -L arch`
    `## mkfs.ext4 /dev/sda4`
    
## Mount the partitions
    `## mount /dev/sda3 /mnt`

    `## mkdir /mnt/{boot,home}`
    `## mount /dev/sda1 /mnt/boot`
    `## mount /dev/sda4 /mnt/home`

## Installing base packages

    *NOTE: Live media uses reflector to sort mirrorlist, pacstrap copies that list to install*

*  Install the base packages into /mnt   
    ```
    ## pacstrap /mnt base linux linux-firmware git nano vim intel-ucode
    ```
*  Generate the FSTAB file with:   
    ```
    ## genfstab -U /mnt >> /mnt/etc/fstab
    ```
*  Chroot in with   
    ```
    ## arch-chroot /mnt
    ```
*  Check the fstab with   
    ```
    ## cat /etc/fstab
    ```
*  Download the git repository and execute the arch-base-uefi.sh with:  
    ```
    ## chmod +x arch-base-uefi.sh
    ## ./arch-base-uefi.sh
    ```
*  In the same way execute systemd script

    *NOTE: Remember to edit arch-base-uefi.sh before running*