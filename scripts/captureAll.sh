#!/bin/bash

# Take a screenshot 
grim "$HOME/Pictures/Screenshots/$(date +'%s_grim.png')"

# Play sound
play /home/fj/Music/assets/sh.mp3 &> /dev/null

# Display a notification
dunstify -u critical "📸 Screenshot taken!" --icon=dialog-information
