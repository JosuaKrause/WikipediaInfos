#!/bin/sh

dir=authors_pages

if [[ ! -d $dir ]]; then
    mkdir $dir
fi

if [[ "$(ls -A $dir)" ]]; then
    echo "warning: $dir is not empty!"
    exit 1
fi

echo "results in $dir"

for file in authors/*; do
    f=`echo $file | grep -oE "[^/]+$"`
    while read a; do
        echo "$f" >> "$dir/$a"
    done < "authors/$f"
    echo "process: $f"
done

tmp=`mktemp temp.XXXX`
for file in $dir/*; do
    echo "sort: $file"
    cat "$file" | sort | uniq -c | sort > "$tmp"
    cat "$tmp" > "$file"
done
rm $tmp
