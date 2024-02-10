#!/bin/bash

# Create temporary install directory
mkdir /tmp/yay

# change into directory
cd /tmp/yay

# git clone yay and make 
git clone https://aur.archlinux.org/yay.git
makepkg -si

# exit and delete directory
cd
rm -rf /tmp/yay
yay --version
