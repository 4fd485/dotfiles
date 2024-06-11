#!/bin/bash

# Define the volume decrease step
step=5

# Decrease the volume using pactl
pactl set-sink-volume @DEFAULT_SINK@ -$step%

# Get the current volume level
current_volume=$(pactl list sinks | grep -A 15 'Sink #' | grep 'Volume:' | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

# Send notification with volume percentage
dunstify "Volume Decreased: $current_volume%" -r 1234 -i audio-volume-low -h int:value:$current_volume
