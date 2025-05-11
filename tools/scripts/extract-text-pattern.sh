#!/bin/bash

# Script to extract specific patterns from text using grep and sed/awk.
#
# Arguments:
# $1: input_file - The file to process.
# $2: search_regex - The POSIX ERE regex to identify lines or sections.
# $3: extract_regex (optional) - A sed/awk regex to extract specific parts from matched lines.
#                                If omitted, prints the whole matched line.
#                                Example for sed: 's/.*VALUE: \\([^ ]*\\).*/\\1/p' (prints captured group)
#                                Example for awk: '{print $2}' (prints second field)
# $4: interpreter (optional) - 'sed' or 'awk' for $3. Defaults to 'sed'.

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <input_file> <search_regex> [extract_regex] [interpreter (sed|awk)]"
  echo "Example (grep only): $0 'input.log' 'ERROR:'"
  echo "Example (grep and sed): $0 'input.txt' 'UserID:' 's/.*UserID: \\([0-9]*\\).*/\\1/p'"
  echo "Example (grep and awk): $0 'data.csv' '^user,' '{print $2}' 'awk'"
  exit 1
fi

INPUT_FILE="$1"
SEARCH_REGEX="$2"
EXTRACT_REGEX="$3"
INTERPRETER=${4:-"sed"}

if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: Input file '$INPUT_FILE' not found."
  exit 1
fi

echo "Processing file: $INPUT_FILE"
echo "Searching for lines matching: $SEARCH_REGEX"

if [ -z "$EXTRACT_REGEX" ]; then
  grep -E "$SEARCH_REGEX" "$INPUT_FILE"
else
  echo "Extracting with $INTERPRETER using: $EXTRACT_REGEX"
  if [ "$INTERPRETER" == "awk" ]; then
    grep -E "$SEARCH_REGEX" "$INPUT_FILE" | awk "$EXTRACT_REGEX"
  else # Default to sed
    grep -E "$SEARCH_REGEX" "$INPUT_FILE" | sed -n -r "$EXTRACT_REGEX"
  fi
fi

if [ $? -ne 0 ]; then
    echo "Error during processing."
    exit 1
fi

echo ""
echo "Script finished."
