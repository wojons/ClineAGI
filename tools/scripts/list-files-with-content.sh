#!/bin/bash

# Script to list all files matching a given pattern in a directory
# and output each filename followed by its content.
#
# Arguments:
# $1: directory_path - The path to the directory to search in.
# $2: file_pattern - The glob pattern to match files (e.g., '*.md', '*.txt'). Must be quoted.

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <directory_path> <file_pattern>"
  echo "Example: $0 './src' '*.js'"
  exit 1
fi

TARGET_DIR="$1"
FILE_PATTERN="$2"

if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory '$TARGET_DIR' not found."
  exit 1
fi

# Using find to locate files and then process each one
# -print0 and read -d $'\0' are used to handle filenames with spaces or special characters.
find "$TARGET_DIR" -name "$FILE_PATTERN" -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "" # Add a newline for better separation
  echo "--- FILENAME: $file ---"
  cat "$file"
  echo "" # Add a newline for better separation
  echo "--- END OF FILE: $file ---"
done

echo "" # Final newline
echo "Script finished."
