#!/usr/bin/env bash
# set all the monitors to $1% brightness
ddccontrol dev:/dev/i2c-6 -r 0x10 -w $1
ddccontrol dev:/dev/i2c-5 -r 0x10 -w $1
ddccontrol dev:/dev/i2c-4 -r 0x10 -w $1