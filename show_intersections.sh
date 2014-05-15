#!/bin/sh

USAGE="usage: $0 [-a] <category1> <category2>"

function usage() {
    echo "$USAGE"
    exit 1
}

if [ "$1" == "-a" ]; then
    show_authors=1
    shift
else
    show_authors=
fi

if [ -z "$2" ] || [ -z "$1" ]; then
    usage
fi

if [[ ! -f "lookup/$1" ]]; then
    ./show_cat.sh "$1"
fi

if [[ ! -f "lookup/$2" ]]; then
    ./show_cat.sh "$2"
fi

function common() {
    comm -12 "lookup/$1" "lookup/$2"
}

function authors() {
    for pages in `common "$1" "$2"`; do
        cat "authors/$pages"
    done
}

if [[ "$show_authors" == "1" ]]; then
    authors "$1" "$2" | sort | uniq
else
    common "$1" "$2"
fi
