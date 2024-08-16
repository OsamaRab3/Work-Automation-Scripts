#!/bin/bash

# list files in a directory

set -- *

dir_color="\033[1;34m" 
reset_color="\033[0m"   


for i; do
    if [ -d "$i" ]; then
        echo -e "${dir_color}$i${reset_color}"
    else
    
        echo "$i"
    fi
done
