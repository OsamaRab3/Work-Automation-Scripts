#!/bin/bash
echo -e "\e[32;1m" 

figlet "Screen Shot"

echo -e "\e[0m"
# Define the directory to save screenshots
SAVE_DIR="$HOME/Pictures/screenshots"
mkdir -p "$SAVE_DIR"

# Define the filename with a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="screenshot_$TIMESTAMP.png"

# Take a screenshot
gnome-screenshot -f "$SAVE_DIR/$FILENAME"


echo "Screenshot saved to $SAVE_DIR/$FILENAME"
