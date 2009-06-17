#!/bin/bash

if [ -f $CONFIG_FILE ]; then
    source "$CONFIG_FILE"
else
    CocoaDialog msgbox --text "Error: Not configured" \
        --informative-text "This feature only works when configured." \
        --button1 "Continue" \
        --icon "x"
    exit 1
fi
