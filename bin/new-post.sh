#!/bin/sh

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# Creates new empty post. Post name is date in seconds or a givven 
# argument. The empty post is a text file located in archive/YEAR/MONTH/DAY.
#

YEAR="$(date +%Y)"
MONTH="$(date +%m)"
DAY="$(date +%d)"
id="${1:-$(date +%s)}"

archive="$(dirname "$0")/../archive"
destdir="$archive/$YEAR/$MONTH/$DAY"

mkdir -p "$destdir"
touch "$destdir/$id.txt"
