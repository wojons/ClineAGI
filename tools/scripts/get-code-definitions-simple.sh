#!/bin/bash

# Script to perform a simple regex-based extraction of common code definitions
# (functions, classes) from a file or files in a directory.
# This is a best-effort script and may not be accurate for all languages or complex code.
#
# Arguments:
# $1: path - Path to a single file or a directory.
# $2: file_pattern (optional) - If $1 is a directory, a glob pattern to filter files (e.g., '*.py', '*.js').
#                               Defaults to '*' if $1 is a directory and this is omitted.

if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_file_or_dir> [file_pattern_for_dir]"
  echo "Example (single file): $0 'src/utils.js'"
  echo "Example (directory, all files): $0 './src'"
  echo "Example (directory, specific files): $0 './src' '*.py'"
  exit 1
fi

TARGET_PATH="$1"
FILE_PATTERN="$2"

# Common regex patterns for functions and classes (very simplified)
# Covers: function name(...), class Name..., def name(...), etc.
# Does not handle all language specifics or complex signatures.
DEFINITION_REGEX="^(function|class|def)\\s+([a-zA-Z_][a-zA-Z0-9_]*)"

process_file() {
  local filepath="$1"
  echo "--- Definitions in: $filepath ---"
  grep -E -o "$DEFINITION_REGEX" "$filepath" | sed -E 's/^(function|class|def)\s+//'
  if [ $? -ne 0 ] && [ $(grep -c -E "$DEFINITION_REGEX" "$filepath") -eq 0 ]; then
    echo "No common definitions found or error in processing."
  fi
  echo ""
}

if [ -f "$TARGET_PATH" ]; then
  process_file "$TARGET_PATH"
elif [ -d "$TARGET_PATH" ]; then
  echo "Processing directory: $TARGET_PATH"
  if [ -z "$FILE_PATTERN" ]; then
    FILE_PATTERN='*'
  fi
  echo "Using file pattern: $FILE_PATTERN"
  find "$TARGET_PATH" -type f -name "$FILE_PATTERN" -print0 | while IFS= read -r -d $'\0' file; do
    process_file "$file"
  done
else
  echo "Error: Path '$TARGET_PATH' is not a valid file or directory."
  exit 1
fi

echo "Script finished."
