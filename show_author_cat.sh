#!/bin/sh

while read line; do
    ./find_cat.sh "$line"
done < /dev/stdin

