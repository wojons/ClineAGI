#!/bin/bash

# Script to search for a regex pattern in files within a directory.
#
# Arguments:
# $1: dirpath - The path to the directory to search in.
# $2: search_regex - The POSIX ERE regex to search for.
# $3: file_pattern (optional) - A glob pattern to filter files (e.g., '*.js', '*.txt').
#                               If omitted, searches all files.

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <dirpath> <search_regex> [file_pattern]"
  echo "Example (all files): $0 './logs' 'ERROR:'"
  echo "Example (specific files): $0 './src' 'myFunction' '*.ts'"
  exit 1
fi

DIRPATH="$1"
SEARCH_REGEX="$2"
FILE_PATTERN="$3"

if [ ! -d "$DIRPATH" ]; then
  echo "Error: Directory '$DIRPATH' not found."
  exit 1
fi

echo "Searching in directory: $DIRPATH"
echo "For regex pattern: $SEARCH_REGEX"

if [ -n "$FILE_PATTERN" ]; then
  echo "Filtering by file pattern: $FILE_PATTERN"
  # Using find to locate files and then grep to search within them
  # -print0 and xargs -0 handle filenames with spaces or special characters
  find "$DIRPATH" -type f -name "$FILE_PATTERN" -print0 | xargs -0 grep -H -n -E "$SEARCH_REGEX"
else
  # Search recursively in all files if no pattern is provided
  grep -R -H -n -E "$SEARCH_REGEX" "$DIRPATH"
fi

if [ $? -ne 0 ]; then
    # Grep returns 1 if no lines were selected, which is not necessarily an error for this script's purpose.
    # It returns >1 for actual errors.
    if [ $? -gt 1 ]; then
        echo "Error during search."
        exit 1
    else
        echo "No matches found."
    fi
fi

echo ""
echo "Script finished."
