#!/bin/bash

echo "Installing dependencies for Waybar scripts..."

# Detect package manager
if command -v pacman &> /dev/null; then
    sudo pacman -S --needed acpi curl jq playerctl pulseaudio-utils swaylock zenity wofi grim slurp
elif command -v apt &> /dev/null; then
    sudo apt install -y acpi curl jq playerctl pulseaudio-utils swaylock zenity wofi grim slurp
elif command -v dnf &> /dev/null; then
    sudo dnf install -y acpi curl jq playerctl pulseaudio-utils swaylock zenity wofi grim slurp
else
    echo "Unsupported package manager. Please install dependencies manually."
    exit 1
fi

# Copy Waybar config
echo "Copying Waybar config..."
mkdir -p ~/.config/waybar
cp -r ./* ~/.config/waybar/

echo "Done! You can now launch Waybar."
