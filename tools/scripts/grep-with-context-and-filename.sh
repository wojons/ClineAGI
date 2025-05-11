#!/bin/bash

# Script to search for a pattern in files within a directory,
# showing filename, line number, and context lines.
#
# Arguments:
# $1: search_pattern - The regex pattern to search for. Must be quoted.
# $2: directory_path - The path to the directory to search in.
# $3: file_pattern - The glob pattern to match files (e.g., '*.md', '*.txt'). Must be quoted.
# $4: context_lines (optional) - Number of lines of context before and after (default: 2).

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <search_pattern> <directory_path> <file_pattern> [context_lines]"
  echo "Example: $0 'myFunction' './src' '*.ts' 3"
  exit 1
fi

SEARCH_PATTERN="$1"
TARGET_DIR="$2"
FILE_PATTERN="$3"
CONTEXT_LINES=${4:-2} # Default to 2 lines of context if not provided

if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory '$TARGET_DIR' not found."
  exit 1
fi

# Using find to locate files and then grep within them
# grep -H shows filename, -n shows line number, -C shows context
# The find command will pass all found files to a single grep command for efficiency.
# Using an intermediate variable for find results to avoid issues if no files are found.
FOUND_FILES=$(find "$TARGET_DIR" -name "$FILE_PATTERN" -type f)

if [ -z "$FOUND_FILES" ]; then
  echo "No files matching pattern '$FILE_PATTERN' found in directory '$TARGET_DIR'."
  exit 0
fi

# Pass the list of found files to grep
# Using xargs to handle potentially long list of files
echo "$FOUND_FILES" | xargs grep -Hn -C "$CONTEXT_LINES" --color=always -E "$SEARCH_PATTERN"

echo ""
echo "Script finished."
