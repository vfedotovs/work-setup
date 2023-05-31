#!/bin/bash

# Set the source and destination paths
source_folder="$HOME/Library/Application Support/Google/Chrome/Default"
destination_folder="$HOME/Desktop/Chrome_Bookmarks_Backup"

# Create the destination folder if it doesn't exist
mkdir -p "$destination_folder"

# Copy the Bookmarks file
cp "$source_folder/Bookmarks" "$destination_folder/Bookmarks"

# Display a message to indicate the backup is complete
echo "Chrome bookmarks backup complete."
echo "Backup location: $destination_folder"
