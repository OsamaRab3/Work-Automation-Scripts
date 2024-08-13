#!/bin/bash


echo -e "\e[32;1m"
figlet "Downloads a file "
echo -e "\e[0m"

if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL="$1"

# Download the file using wget
wget "$URL"


if [ $? -eq 0 ]; then
    echo "Download completed successfully."
else
    echo "Download failed."
    exit 1
fi
