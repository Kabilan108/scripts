#!/bin/bash
#
# This script is meant to prepare a .md file from my Obsidian notes for
# conversion to PDF with the Eisvogel pandoc template.

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file.md>"
    exit 1
fi

FILE=$1
DATE=$(date +"%m-%d-%Y")
TEMPFILE=$(mktemp)

if [ ! -f "$FILE" ]; then
    echo "File $FILE does not exist."
    exit 1
fi


# Use sed to 
