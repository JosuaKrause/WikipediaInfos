#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page>"
    exit 1
fi

if [[ ! -d histories ]]; then
    mkdir histories
fi

if [[ -f "histories/$1" ]]; then
    echo "$1 already crawled!"
    exit 0
fi

curl "http://en.wikipedia.org/w/index.php?title=Special:Export&pages=$1&history&action=submit" 2>> err.txt 1> "histories/$1"
