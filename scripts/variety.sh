#!/bin/bash

WALLPAPER_PATH_FILE="/home/fj/.config/variety/wallpaper/wallpaper.jpg.txt"

WALLPAPER_PATH=$(cat "$WALLPAPER_PATH_FILE")

if [ -f "$WALLPAPER_PATH" ]; then

    dunstify -i "$WALLPAPER_PATH" "Wallpaper Changed" "Wallpaper successfully changed to $(basename "$WALLPAPER_PATH")"
else
    dunstify "Wallpaper Change Failed" "The wallpaper file specified does not exist: $WALLPAPER_PATH"
fi
