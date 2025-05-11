#!/bin/bash

# Script to list directory contents.
#
# Arguments:
# $1: dirpath - The path to the directory.
# $2: recursive_flag (optional) - '-R' or similar for recursive listing.
#                                  If omitted, lists top-level contents.

if [ -z "$1" ]; then
  echo "Usage: $0 <dirpath> [recursive_flag]"
  echo "Example (top-level): $0 './src'"
  echo "Example (recursive): $0 './src' '-R'"
  exit 1
fi

DIRPATH="$1"
RECURSIVE_FLAG="$2"

if [ ! -d "$DIRPATH" ]; then
  echo "Error: Directory '$DIRPATH' not found."
  exit 1
fi

echo "Listing contents of: $DIRPATH"

if [ -n "$RECURSIVE_FLAG" ]; then
  ls -A $RECURSIVE_FLAG "$DIRPATH"
else
  ls -A "$DIRPATH"
fi

if [ $? -ne 0 ]; then
    echo "Error listing directory contents."
    exit 1
fi

echo ""
echo "Script finished."
