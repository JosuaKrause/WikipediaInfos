#!/bin/sh

while read line; do
  count=`cat "authors_pages/$line" | wc -l`
  echo "$count $line"
done < "${1:-/proc/${$}/fd/0}"
