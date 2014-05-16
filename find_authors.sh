#!/bin/sh

if [[ -z "$1" ]]; then
    echo "Usage: $0 <filter>"
fi

ls -A "author_pages/*$1*"
