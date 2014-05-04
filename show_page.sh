#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page>"
    exit 1
fi

if [[ ! -e "pages/$1" ]]; then
    echo "page $1 does not exist"
    exit 1
fi

function page() {
    echo "Page: $1"
    echo "Link: http://en.wikipedia.org/wiki/$1"
    echo "Authors:"
    cat "authors/$1"
}

page "$1" | less
