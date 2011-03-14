#!/bin/sh

YEAR="$(date +%Y)"
MONTH="$(date +%m)"
DAY="$(date +%d)"
id="${1:-$(date +%s)}"

archive="$(dirname "$0")/../archive"
destdir="$archive/$YEAR/$MONTH/$DAY"

echo $archive

mkdir -p "$destdir"
touch "$destdir/$id.txt"
