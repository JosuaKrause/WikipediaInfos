#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page> <depth>"
    exit 1
fi

depth=$(( $2 - 1 ))

if [[ ! -f pages/$1 ]]; then
    echo "fetch: $1"
    ./get_links.py $1
fi

echo "crawl[$2]: $1"

while read l; do
    if [[ ! -f pages/$l ]]; then
        echo "fetch: $l"
        ./get_links.py $l
    fi
    if [[ $depth -ge 0 ]]; then
        $0 $l $depth
    fi
done < pages/$1
