#!/bin/bash

if [ -z "$TM_PROJECT_DIRECTORY" ]; then
    CocoaDialog msgbox --text "Error: Not in a project" \
        --informative-text "Synchronizing with remote directory only works within a TextMate project." \
        --button1 "Continue" \
        --icon "x"
    exit 1
fi
