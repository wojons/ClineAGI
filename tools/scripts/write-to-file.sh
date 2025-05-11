#!/bin/bash

# Script to write content to a file.
# Creates the file if it doesn't exist, or overwrites it if it does.
#
# Arguments:
# $1: filepath - The path to the file.
# $2: content_string (optional) - The content to write.
# If $2 is not provided, the script will read content from stdin.

if [ -z "$1" ]; then
  echo "Usage: $0 <filepath> [content_string]"
  echo "If content_string is not provided, content will be read from stdin."
  echo "Example (with content_string): $0 'output.txt' 'Hello World'"
  echo "Example (from stdin): echo 'Hello World' | $0 'output.txt'"
  exit 1
fi

FILEPATH="$1"
CONTENT_STRING="$2"

# Create parent directories if they don't exist
PARENT_DIR=$(dirname "$FILEPATH")
if [ ! -d "$PARENT_DIR" ]; then
  mkdir -p "$PARENT_DIR"
  if [ $? -ne 0 ]; then
    echo "Error: Could not create directory $PARENT_DIR"
    exit 1
  fi
fi

if [ -n "$CONTENT_STRING" ]; then
  # Write content_string to file
  echo "$CONTENT_STRING" > "$FILEPATH"
else
  # Read from stdin to file
  cat > "$FILEPATH"
fi

if [ $? -eq 0 ]; then
  echo "Content successfully written to $FILEPATH"
else
  echo "Error writing to file $FILEPATH"
  exit 1
fi
