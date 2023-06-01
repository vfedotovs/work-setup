#!/bin/bash

# Set the source and destination paths
source_folder="$HOME/Library/Application Support/Firefox/Profiles"
destination_folder="$HOME/Desktop/Firefox_Bookmarks_Backup"

# Create the destination folder if it doesn't exist
mkdir -p "$destination_folder"

# Find the Firefox profile directory
profile_dir=$(ls -d "$source_folder"/*/ | grep release | head -n 1)

# tft9t0mz.default-release
# Copy the bookmarks file
cp "$profile_dir/places.sqlite" "$destination_folder/places.sqlite"

# Display a message to indicate the backup is complete
echo "Firefox bookmarks backup complete."
echo "Backup location: $destination_folder"
