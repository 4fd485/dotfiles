#!/bin/bash

# Define the volume increase step
step=5

# Increase the volume using pactl
pactl set-sink-volume @DEFAULT_SINK@ +$step%

# Get the current volume level
current_volume=$(pactl list sinks | grep -A 15 'Sink #' | grep 'Volume:' | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

# Send notification with volume percentage
dunstify "Volume Increased: $current_volume%" -r 1234 -i audio-volume-high -h int:value:$current_volume
