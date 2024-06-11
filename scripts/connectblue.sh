#!/bin/bash

# Check if the MAC address has been set
if [ "$DEVICE_MAC" == "XX:XX:XX:XX:XX:XX" ]; then
    dunstify -u critical -t 5000 " Bluetooth Connection " "Please set the MAC address of your Bluetooth device in the script located at /home/(user)/.scripts/connectblue.sh "
    exit 1
fi

# Connect to Bluetooth device
echo -e "power on\nconnect $DEVICE_MAC\nquit" | bluetoothctl

# Check if the connection was successful
if bluetoothctl info $DEVICE_MAC | grep -q "Connected: yes"; then
    dunstify -u normal -t 5000 " Bluetooth Connection " "Connected to Bluetooth device successfully! "
else
    dunstify -u critical -t 5000 " Bluetooth Connection " "Failed to connect to Bluetooth device. Please try again. "
fi

# Instructions for users:
# 1. Replace `XX:XX:XX:XX:XX:XX` with the MAC address of your Bluetooth device.
#    You can find the MAC address by running `bluetoothctl devices` in the terminal.
# 2. Make the script executable by running `chmod +x connect_bluetooth.sh`.
