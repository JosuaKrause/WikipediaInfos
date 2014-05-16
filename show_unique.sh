#!/bin/sh

USAGE="usage: $0 [-a] <category>"

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

if [[ -z "$1" ]]; then
    usage
fi

if [[ ! -f "lookup/$1" ]]; then
    ./show_cat.sh "$1"
fi

function common() {
    tmp1=`mktemp temp.XXXX`
    tmp2=`mktemp temp.XXXX`
    cat "lookup/$1" > "$tmp1"
    for cate in `ls lookup`; do
        if [[ ! "$cate" == "$1" ]]; then
            comm -32 "$tmp1" "lookup/$cate" > "$tmp2"
            cat "$tmp2" > "$tmp1"
        fi
    done
    cat "$tmp1"
    rm "$tmp1"
    rm "$tmp2"
}

function authors() {
    for pages in `common "$1"`; do
        cat "authors/$pages"
    done
}

function real_authors() {
    for author in `authors $1 | sort | uniq`; do
        c=` echo "$author" | ./show_author_cat.sh 2> /dev/null | grep "$1" 2> /dev/null `
        if [[ ! -z $c ]]; then
            echo "$author"
        fi
    done
}

if [[ "$show_authors" == "1" ]]; then
    real_authors "$1" | sort | uniq
else
    common "$1"
fi
