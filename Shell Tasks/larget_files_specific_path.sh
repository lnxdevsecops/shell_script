#!/bin/bash

read -p "Please provide directory path to check top 10 larget files: " dest_path

if [ -d "$dest_path" ]; then
    largest_files=$(find "$dest_path" -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10)
    echo "Top 10 larget files in $dest_path location are: $largest_files"
else
    echo "Destination path does not exist"
fi
