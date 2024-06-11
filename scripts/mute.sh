#!/bin/bash

# Check if audio is currently muted
is_muted=$(pactl list sinks | grep -A 10 "Sink #" | grep "Mute: yes")

# Toggle mute status
if [ -n "$is_muted" ]; then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    message="Sound Unmuted"
else
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    message="Sound Muted"
fi

# Send notification using dunstify
dunstify "$message"
