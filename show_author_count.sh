#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 [-m|--show-max] <page_count> [<filter>]"
    exit 1
fi

if [ $1 == "-m" ] || [ $1 == "--show-max" ]; then
    show_max=1
    shift
fi

if [[ -z $1 ]]; then
    expected=0
else
    expected=$1
fi

if [[ -z $2 ]]; then
    filter=
else
    filter=$2
fi

max_count=0
for file in authors_pages/*; do
    f=`echo $file | grep -oE "[^/]+$"`
    fil=`echo "$f" | grep "$filter"`
    if [ -z "$filter" ] || [ -z "$fil" ]; then
        count=`wc -l "authors_pages/$f" | sed 's/^ *//g' | cut -d' ' -f1`
        if [[ "$count" -le "$expected" ]]; then
            echo $f
        fi
        if [[ "$count" -gt "$max_count" ]]; then
            max_count=$count
        fi
    fi
done

if [[ ! -z $show_max ]]; then
    echo "max count: $max_count"
fi
