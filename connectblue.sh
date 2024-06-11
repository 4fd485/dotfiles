#!/bin/bash

# Define the MAC address of your Bluetooth headphones
HEADPHONES_MAC="D8:AA:59:92:9B:3C"

# Connect to Bluetooth headphones
echo -e "power on\nconnect $HEADPHONES_MAC\nquit" | bluetoothctl

# Check if the connection was successful
if bluetoothctl info $HEADPHONES_MAC | grep -q "Connected: yes"; then
    echo "Connected to Bluetooth headphones."
    
    # Play the MP3 file
    play /home/fj/Music/assets/appear.mp3
else
    echo "Failed to connect to Bluetooth headphones."
fi
