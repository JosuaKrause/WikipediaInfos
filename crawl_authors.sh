#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <category> [<page> [<depth>]]"
    exit 1
fi

echo "begin $1"

if [[ ! -z "$2" ]]; then
    echo "crawl $2 $3 $1"
    ./crawl.sh "$2" "$3" "$1"
fi

echo "fetching histories for $1"

cat=$1

for file in pages/*; do
    f=`echo "$file" | grep -oE "[^/]+$"`
    c=`cat "pages/$f" | grep "$cat"`
    if [[ ! -z $c ]]; then
        if [[ ! -f "authors/$f" ]]; then
            if [[ ! -f "histories/$f" ]]; then
                echo "history: $f"
                ./get_history.sh "$f"
            fi
            echo "authors: $f"
            ./get_authors.sh "$f"
        else
            echo "authors for $f already computed"
        fi
    #else
    #    echo "skipped: $f"
    fi
done
