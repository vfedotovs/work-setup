#!/bin/bash

# Set the source and destination paths
source_folder="$HOME/Desktop/Firefox_Bookmarks_Backup"
destination_folder="$HOME/Library/Application Support/Firefox/Profiles"

# Find the Firefox profile directory
profile_dir=$(ls -d "$destination_folder"/*/ | grep release | head -n 1)

# Copy the bookmarks file from the backup to the Firefox profile directory
cp "$source_folder/places.sqlite" "$profile_dir/places.sqlite"

# Display a message to indicate the restore is complete
echo "Firefox bookmarks restore complete."
