#!/bin/bash

# Script to perform search and replace in a file using sed.
#
# Arguments:
# $1: filepath - The path to the file.
# $2: search_regex - The POSIX ERE regex to search for.
# $3: replacement_string - The string to replace the matched regex with.
# $4: sed_flags (optional) - Additional flags for sed (e.g., 'g' for global replace). Defaults to 'g'.

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <filepath> <search_regex> <replacement_string> [sed_flags]"
  echo "Example: $0 'config.txt' 'old_value' 'new_value'"
  echo "Example (global replace): $0 'config.txt' 'old_value' 'new_value' 'g'"
  exit 1
fi

FILEPATH="$1"
SEARCH_REGEX="$2"
REPLACEMENT_STRING="$3"
SED_FLAGS=${4:-"g"} # Default to global replacement

if [ ! -f "$FILEPATH" ]; then
  echo "Error: File '$FILEPATH' not found."
  exit 1
fi

# Create a backup of the original file
cp "$FILEPATH" "$FILEPATH.bak"
if [ $? -ne 0 ]; then
  echo "Error: Could not create backup file $FILEPATH.bak"
  exit 1
fi

echo "Performing replacement in $FILEPATH (backup created at $FILEPATH.bak)"
echo "Search Regex: $SEARCH_REGEX"
echo "Replacement String: $REPLACEMENT_STRING"
echo "Sed Flags: $SED_FLAGS"

# Perform the replacement using sed -i for in-place editing.
# Using a different delimiter for sed to avoid issues if search/replace strings contain '/'
sed -i '' -r "s|${SEARCH_REGEX}|${REPLACEMENT_STRING}|${SED_FLAGS}" "$FILEPATH"

if [ $? -eq 0 ]; then
  echo "Replacement successful."
else
  echo "Error during replacement. Original file restored from backup."
  mv "$FILEPATH.bak" "$FILEPATH" # Attempt to restore backup
  exit 1
fi

# Remove backup if successful
rm "$FILEPATH.bak"
echo "Backup file $FILEPATH.bak removed."
