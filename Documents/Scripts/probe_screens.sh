#!/usr/bin/env bash
#probes for screens and outputs them in correct format for ddcutil wrapper.
ddccontrol -p 2>/dev/null | grep "Device: dev:/dev/i2c-" | awk '{print $3}' > detected_screens.txt;
