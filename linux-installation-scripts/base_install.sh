#!/bin/bash

ln -sf /usr/share/zoneinfo/Africa/Nairobi /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "ericngigi" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ericngigi.localdomain ericngigi" >> /etc/hosts
echo root:vexille | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S --noconfirm grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils hplip alsa-utils pulseaudio bash-completion openssh rsync acpi acpi_call acpid os-prober ntfs-3g terminus-font

grub-install --target=i386-pc /dev/sda # replace sdx with your disk name, not the partition
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable reflector.timer
systemctl enable acpid

useradd -mG wheel,storage,power ericngigi
echo ericngigi:vexille | chpasswd

# echo "ericngigi ALL=(ALL) ALL" >> /etc/sudoers.d/ericngigi

# printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
