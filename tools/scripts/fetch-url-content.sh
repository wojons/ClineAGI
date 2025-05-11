#!/bin/bash

# Script to fetch content from a URL, similar to wget.
# Uses curl for broader availability.
#
# Arguments:
# $1: url - The URL to fetch.
# $2: output_file (optional) - File to save the content to. If not provided, outputs to stdout.

if [ -z "$1" ]; then
  echo "Usage: $0 <url> [output_file]"
  echo "Example: $0 'https://example.com' 'output.html'"
  exit 1
fi

URL="$1"
OUTPUT_FILE="$2"

echo "Fetching URL: $URL"

if [ -n "$OUTPUT_FILE" ]; then
  curl -L -s -o "$OUTPUT_FILE" "$URL"
  if [ $? -eq 0 ]; then
    echo "Content saved to $OUTPUT_FILE"
  else
    echo "Error fetching URL or saving to file."
    exit 1
  fi
else
  curl -L -s "$URL"
  if [ $? -ne 0 ]; then
    echo "Error fetching URL."
    exit 1
  fi
fi

echo "" # Final newline
echo "Script finished."
