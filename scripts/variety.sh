#!/bin/bash

# Path to the text file containing the image location
WALLPAPER_PATH_FILE="/home/fj/.config/variety/wallpaper/wallpaper.jpg.txt"

# Read the image location from the text file
WALLPAPER_PATH=$(cat "$WALLPAPER_PATH_FILE")

# Check if the file exists
if [ -f "$WALLPAPER_PATH" ]; then
    # Send a notification using dunstify
    dunstify -i "$WALLPAPER_PATH" "Wallpaper Changed" "Wallpaper successfully changed to $(basename "$WALLPAPER_PATH")"
else
    # Send a notification if the wallpaper file doesn't exist
    dunstify "Wallpaper Change Failed" "The wallpaper file specified does not exist: $WALLPAPER_PATH"
fi
