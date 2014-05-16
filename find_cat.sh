#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page>"
    exit 1
fi

page=$1

for file in `ls -A lookup`; do
    cat=`cat "lookup/$file" | grep "$page"`
    if [[ ! -z "$cat" ]]; then
        echo "$file"
    fi
done
