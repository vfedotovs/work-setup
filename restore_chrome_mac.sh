#!/bin/bash

# Set the source and destination paths
source_folder="$HOME/Desktop/Chrome_Bookmarks_Backup"
destination_folder="$HOME/Library/Application Support/Google/Chrome/Default"

# Copy the Bookmarks file from the backup to the Chrome user data directory
cp "$source_folder/Bookmarks" "$destination_folder/Bookmarks"

# Display a message to indicate the restore is complete
echo "Chrome bookmarks restore complete."
