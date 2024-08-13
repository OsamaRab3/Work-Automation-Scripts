#!/bin/bash
# Script to open Firefox

if [ -z "$1" ]; then
 
    firefox &
else
  
    firefox "$1" &
fi
