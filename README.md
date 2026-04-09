# Waybar Config for Hyprland

My Waybar setup on CachyOS +0 Hyprland.  
Includes custom modules and styling.

## Dependencies

This Waybar config uses scripts that require:

- swaylock → lock screen
- zenity → GUI dialogs
- wofi → application launcher
- grim + slurp → screenshots
- acpi, curl, jq, playerctl, pulseaudio-utils → other modules

## Preview

![Waybar Screenshot](screenshot.png)

## Installation

```bash
git clone git@github.com:TSA112/Waybar.git ~/.config/waybar

or Install them using your package manager or run the included `install.sh`.

```bash
git clone git@github.com:TSA112/Waybar.git ~/.config/waybar
cd Waybar
chmod +x install.sh
./install.sh
