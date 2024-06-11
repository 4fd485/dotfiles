#!/bin/bash

# Take a screenshot 
grim "$HOME/Pictures/Screenshots/$(date +'%s_grim.png')"

# Play sound
play "$HOME/.scripts/assets/screenshot.mp3" &> /dev/null

# Display a notification
dunstify -u critical "📸 Screenshot taken!" --icon=dialog-information
