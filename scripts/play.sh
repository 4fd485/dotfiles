#!/bin/bash

# Check if the media player is currently playing
is_playing=$(playerctl status)

# Toggle play/pause
if [ "$is_playing" = "Playing" ]; then
    playerctl pause
    message="Sound Paused"
else
    playerctl play
    message="Sound Resumed"
fi

# Send notification using dunstify
dunstify "$message"
