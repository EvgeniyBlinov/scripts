#!/bin/bash

TIME="$1"
HOUR="${1%%:*}"
MINUTE="${1##*:}"
PARAMS="$*"
COMMAND="$(echo $PARAMS|cut -d ' ' -f 2-)"

## debug
#echo "TIME=$TIME"
#echo "HOUR=$HOUR"
#echo "MINUTE=$MINUTE"


while :; do
    if [ "$HOUR:$MINUTE" == "$(date +%H:%M)" ]; then
        echo "TIME $HOUR:$MINUTE COMMAND:$COMMAND"
        eval "$COMMAND"
        exit 0
    fi
    sleep 30
done
