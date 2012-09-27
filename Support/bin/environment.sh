#!/bin/bash

export CONFIG_FILE="$TM_PROJECT_DIRECTORY/.tm_sync.config"

DIRECTORIES_TO_SEARCH="~/bin /usr/local/Cellar/gems/*/bin/ /usr/local/bin /usr/bin"
# Look for growl notify
for i in $DIRECTORIES_TO_SEARCH; do
    if [[ -x "$i/growlnotify" ]]; then
        export GROWLNOTIFY="$i/growlnotify"
        break
    fi
done
# export GEM_HOME=/usr/local/Cellar/gems/1.9
# Look for terminal-notifier
for i in $DIRECTORIES_TO_SEARCH; do
    if [[ -x "$i/terminal-notifier" ]]; then
        export TERMINALNOTIFIER="$i/terminal-notifier"
        break
    fi
done

function print_message {
    TITLE="$1"
    MESSAGE="$2"

    if [[ -n "$GROWLNOTIFY" ]]; then
        bash -c -- "\"$GROWLNOTIFY\" -a TextMate -t \"${TITLE}\" -m \"${MESSAGE}\""
    elif [[ -n "$TERMINALNOTIFIER" ]]; then
        bash -c -- "\"$TERMINALNOTIFIER\" -activate \"${TM_APP_IDENTIFIER}\" -title \"TextMate\" -subtitle \"${TITLE}\" -message \"${MESSAGE}\"" 1>/dev/null
    else
        echo "${TITLE}: ${MESSAGE}"
    fi
}

function error_message {
    TITLE="$1"
    MESSAGE="$2"

    if [[ -n "$GROWLNOTIFY" ]]; then
        bash -c -- "\"$GROWLNOTIFY\" -a TextMate -t \"${TITLE}\" -m \"${MESSAGE}\" -p 2 -s"
    elif [[ -n "$TERMINALNOTIFIER" ]]; then
        bash -c -- "\"$TERMINALNOTIFIER\" -activate \"${TM_APP_IDENTIFIER}\" -title \"TextMate\" -subtitle \"${TITLE}\" -message \"${MESSAGE}\"" 1>/dev/null
    else
        echo "${TITLE}: ${MESSAGE}"
    fi
}
