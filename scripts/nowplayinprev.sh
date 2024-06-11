# Skip current song using playerctl
playerctl previous

# Wait for a few seconds to allow the player to switch to the next song
sleep 1

# Fetch current song information using playerctl
title=$(playerctl metadata --format '{{ title }}')
artist=$(playerctl metadata --format '{{ artist }}')
album=$(playerctl metadata --format '{{ album }}')
cover_url=$(playerctl metadata --format '{{ mpris:artUrl }}')

# Exit if no song is playing
if [ -z "$title" ]; then
    dunstify "No song is currently playing."
    exit 1
fi

# Define a temporary path for the album cover
cover_path="/tmp/cover.jpg"

# Download the album cover
if [ -n "$cover_url" ]; then
    curl -s "$cover_url" -o "$cover_path"
else
    cover_path="/path/to/default/cover.jpg"  # Provide a default cover path
fi

# Send notification with song info and album cover using dunstify
dunstify -i "$cover_path" "Now Playing" "$artist - $title"
