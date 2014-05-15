#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <category>"
    exit 1
fi

if [[ ! -d lookup/ ]]; then
    mkdir lookup
fi

if [[ -f "lookup/$1" ]]; then
    exit 0
fi

function out() {
    for file in pages/*; do
        line=`cat "$file" | grep "$1"`
        if [[ ! -z "$line" ]]; then
            f=`echo $file | grep -oE "[^/]+$"`
            echo "$f"
        fi
    done
}

out "$1" | sort > "lookup/$1"
