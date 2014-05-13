#!/bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <page>"
    exit 1
fi

if [[ ! -f histories/$1 ]]; then
    echo "extract history of $1 first!"
    exit 1
fi

if [[ ! -d authors ]]; then
    mkdir authors
fi

cat "histories/$1" | grep '<username>' | sed -E "s/^[^<]*<username>([^<]*)<\/username>.*$/\1/g" | sort | uniq > "authors/$1"
