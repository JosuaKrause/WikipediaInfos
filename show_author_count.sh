#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 [-m|--show-max] <page_count>"
    exit 1
fi

if [ $1 == "-m" ] || [ $1 == "--show-max" ]; then
    show_max=1
    shift
fi

expected=$1
if [[ -z $1 ]]; then
    expected=0
fi

max_count=0
for file in authors_pages/*; do
    f=`echo $file | grep -oE "[^/]+$"`
    count=`wc -l "authors_pages/$f" | sed 's/^ *//g' | cut -d' ' -f1`
    if [[ "$count" -le "$expected" ]]; then
        echo $f
    fi
    if [[ "$count" -gt "$max_count" ]]; then
        max_count=$count
    fi
done

if [[ ! -z $show_max ]]; then
    echo "max count: $max_count"
fi
