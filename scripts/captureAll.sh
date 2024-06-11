#!/bin/bash

# Take a screenshot 
grim "$HOME/Pictures/Screenshots/$(date +'%s_grim.png')"

# Play sound
play "$HOME/.config/assets/screenshot.mp3" &> /dev/null

# Display a notification
dunstify -u critical "📸 Screenshot taken!" --icon=dialog-information
