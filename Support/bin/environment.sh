#!/bin/bash

export CONFIG_FILE="$TM_PROJECT_DIRECTORY/.tm_sync.config"

if [[ -x /usr/local/bin/growlnotify ]]; then
    export GROWLNOTIFY="/usr/local/bin/growlnotify"
elif [[ -x ~/bin/growlnotify ]]; then
    export GROWLNOTIFY="~/bin/growlnotify"
fi

function print_message {
    TITLE="$1"
    MESSAGE="$2"

    if [[ -n "$GROWLNOTIFY" ]]; then
        $GROWLNOTIFY -a TextMate -t "${TITLE}" -m "${MESSAGE}"
    else
        echo "${TITLE}: ${MESSAGE}"
    fi    
}

function error_message {
    TITLE="$1"
    MESSAGE="$2"

    if [[ -n "$GROWLNOTIFY" ]]; then
        $GROWLNOTIFY -a TextMate -t "${TITLE}" -m "${MESSAGE}" -p 2 -s
    else
        echo "${TITLE}: ${MESSAGE}"
    fi    
}



