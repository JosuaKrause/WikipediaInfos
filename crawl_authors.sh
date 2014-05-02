#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <category> [<page> [<depth>]]"
    exit 1
fi

if [[ ! -z $2 ]]; then
    ./crawl.sh $2 $3
fi

cat=$1

for file in pages/*; do
    f=`echo $file | grep -oE "[^/]+$"`
    c=`cat pages/$f | grep $cat`
    if [[ ! -z $c ]]; then
        if [[ ! -f authors/$1 ]]; then
            if [[ ! -f histories/$1 ]]; then
                echo "history: $f"
                ./get_history.sh $f
            fi
            echo "authors: $f"
            ./get_authors.sh $f
        fi
    #else
    #    echo "skipped: $f"
    fi
done
