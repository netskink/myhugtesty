#!/bin/bash

# Check if both source and destination directories are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_dir> <destination_dir>"
    exit 1
fi

# Assign source and destination directories
SOURCE_DIR=$1
DEST_DIR=$2

# Loop through each .jpg file in the source directory
for file in "$SOURCE_DIR"/*.jpg; do
    # Extract the filename from the file path
    filename=$(basename "$file")

    # Extract the date part (assuming the date is always at the end)
    date_part=$(echo "$filename" | grep -oE '[0-9]{8}')

    # Extract the year, month, and day from the date part
    year="y${date_part:0:4}"
    month="m${date_part:4:2}"
    day="d${date_part:6:2}"

    # Extract the directory part (before the date part)
    # Assuming the directory part is everything before the last underscore
    dir_part=$(echo "$filename" | sed "s/_$date_part.*//")

    # Create the directory structure
    mkdir -p "$DEST_DIR/$year/$month/$day/$dir_part"

    # Move the file to the created directory
    mv "$file" "$DEST_DIR/$year/$month/$day/$dir_part/"
done
