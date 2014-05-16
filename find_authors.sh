#!/bin/sh

if [[ -z "$1" ]]; then
    echo "Usage: $0 <use_stdin> [<filter>]"
fi

if [[ -z $2 ]]; then
    filter=
else
    filter=$2
fi

if [[ "$1" == "1" ]]; then
    while read line; do
        fil=`echo "$f" | grep "$filter"`
        if [ -z "$filter" ] || [ -z "$fil" ]; then
            echo "$line"
        fi
    done < /dev/stdin
else
    for line in `ls -A authors_pages`; do
        fil=`echo "$line" | grep "$filter"`
        if [ -z "$filter" ] || [ -z "$fil" ]; then
            echo "$line"
        fi
    done
fi
