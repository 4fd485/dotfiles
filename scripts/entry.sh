#!/bin/bash

STEAM_DIR="$HOME/.local/share/Steam"
LIBRARY_DIR="/mnt/games/SteamLibrary/steamapps/common"
DESKTOP_DIR="$HOME/.local/share/applications"

# Remove existing desktop entries
rm -f "$DESKTOP_DIR"/*.desktop

for game_dir in "$LIBRARY_DIR"/*/; do
    if [ -d "$game_dir" ]; then
        GAME_NAME=$(basename "$game_dir")
        DESKTOP_FILE="$DESKTOP_DIR/$GAME_NAME.desktop"
        ICON_PATH="$game_dir/$GAME_NAME.png" # Assuming the game's icon is named after the game folder

        echo "[Desktop Entry]" > "$DESKTOP_FILE"
        echo "Name=$GAME_NAME" >> "$DESKTOP_FILE"
        echo "Exec=$STEAM_DIR/steam.sh steam://rungameid/$GAME_NAME" >> "$DESKTOP_FILE"
        if [ -f "$ICON_PATH" ]; then
            echo "Icon=$ICON_PATH" >> "$DESKTOP_FILE"
        else
            echo "Icon=$STEAM_DIR/appcache/librarycache/$GAME_NAME/$GAME_NAME_icon.jpg" >> "$DESKTOP_FILE"
        fi
        echo "Type=Application" >> "$DESKTOP_FILE"
        echo "Categories=Game;" >> "$DESKTOP_FILE"
        chmod +x "$DESKTOP_FILE"
    fi
done
