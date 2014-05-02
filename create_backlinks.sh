#!/bin/sh

dir=authors_pages

if [[ ! -d $dir ]]; then
    mkdir $dir
fi

if [[ "$(ls -A $dir)" ]]; then
    echo "warning: $dir is not empty!"
    exit 1
fi

echo $dir

for file in authors/*; do
    f=`echo $file | grep -oE "[^/]+$"`
    while read a; do
        if [[ ! -f $dir/$a ]]; then
            touch $dir/$a
        fi
        echo $f >> $dir/$a
    done < authors/$f
    echo "process: $f"
done
