#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <author>"
    exit 1
fi

if [[ ! -e "authors_pages/$1" ]]; then
    echo "user $1 does not exist"
    exit 1
fi

function author() {
    echo "Author: $1"
    echo "Page: http://en.wikipedia.org/wiki/User:$1"
    echo "Edits:"
    cat "authors_pages/$1"
}

author "$1" | less
