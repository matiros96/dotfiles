#!/usr/bin/env bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <brightness_percentage>"
  exit 1
fi

# Read the brightness percentage from the first argument
brightness="$1"

# Read the "dev:/dev/i2c-" values from the "detected_screens.txt" file
# and process them one by one
while read -r i2c_device; do
  ddccontrol "$i2c_device" -r 0x10 -w "$brightness"
done < "detected_screens.txt"
