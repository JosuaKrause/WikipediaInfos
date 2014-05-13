#! /bin/sh

if [[ -z $1 ]]; then
    echo "usage: $0 <output>"
    exit 1
fi

if [[ -f "$1.tar.gz" ]]; then
    exit 0
fi

tar -zcvf "$1.tar.gz" histories/ && rm -r histories
