#!/bin/bash

ln -sf /usr/share/zoneinfo/Africa/Nairobi /etc/localtime
hwclock --systohc
sed -i '171s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "eric" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 eric.localdomain eric" >> /etc/hosts
echo root:vexille | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm
reflector --country Kenya --latest 5 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-lts-headers gvfs nfs-utils inetutils dnsutils alsa-utils bash-completion openssh rsync ntfs-3g

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable reflector.timer

useradd -m eric
echo eric:vexille | chpasswd
usermod -aG sudo eric

echo "ericngigi ALL=(ALL:ALL) ALL" >> /etc/sudoers.d/ericngigi

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
