#!/bin/bash

# Script to read content from a file, with optional line range.
#
# Arguments:
# $1: filepath - The path to the file.
# $2: line_start (optional) - The starting line number (1-indexed).
# $3: line_end (optional) - The ending line number (inclusive).

if [ -z "$1" ]; then
  echo "Usage: $0 <filepath> [line_start] [line_end]"
  echo "Example (read whole file): $0 'src/app.js'"
  echo "Example (read lines 10-20): $0 'src/app.js' 10 20"
  echo "Example (read from line 5 to end): $0 'src/app.js' 5"
  exit 1
fi

FILEPATH="$1"
LINE_START="$2"
LINE_END="$3"

if [ ! -f "$FILEPATH" ]; then
  echo "Error: File '$FILEPATH' not found."
  exit 1
fi

if [ -n "$LINE_START" ] && [ -n "$LINE_END" ]; then
  # Read a specific range of lines
  sed -n "${LINE_START},${LINE_END}p;${LINE_END}q" "$FILEPATH"
elif [ -n "$LINE_START" ]; then
  # Read from a specific line to the end
  sed -n "${LINE_START},\$p" "$FILEPATH"
else
  # Read the whole file
  cat "$FILEPATH"
fi

if [ $? -ne 0 ]; then
    echo "Error reading file or line range."
    exit 1
fi
