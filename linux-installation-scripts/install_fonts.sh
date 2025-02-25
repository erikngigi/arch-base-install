#!/bin/bash

# Font name
FONT_NAME="jetbrainsmono"

# JetBrainsMono Nerd Font URL
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip"

# Clone the font repository
wget -O "/tmp/$FONT_NAME.zip" $FONT_URL

# Extract the font
unzip -d "/tmp/$FONT_NAME" "/tmp/$FONT_NAME.zip"

# Move fonts to the destination directory
sudo cp -r "/tmp/$FONT_NAME" "$HOME/.local/share/fonts"

# Reload the font cache
fc-cache -f -v
