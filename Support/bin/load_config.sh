#!/bin/bash

if [[ -f "$CONFIG_FILE" ]]; then
    source ~/.bashrc
    source "$CONFIG_FILE"
else
    CocoaDialog msgbox --text "Error: Not configured" \
        --informative-text "Synchronizing with remote directory only works when configured.
        
Go to: Bundles → Synchronize Remote Directory [rsync+ssh] → Configure" \
        --button1 "Continue" \
        --icon "x"
    exit 1
fi
