#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page> [<depth>] [<category>]"
    exit 1
fi

if [[ -z $2 ]]; then
    depth=-1
else
    depth=$(( $2 - 1 ))
fi

if [[ ! -f pages/$1 ]]; then
    echo "fetch: $1"
    ./get_links.py $1
fi

if [ ! -z $3 ] && [ ! $1 = $3 ]; then
    c=`cat pages/$1 | grep $3`
    if [[ -z $c ]]; then
        echo "$1 not in category $3"
        exit 0
    fi
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
