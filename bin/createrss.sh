#!/usr/bin/env bash

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# Uses the rsswriter.sh to create an rss which displays all posts.
#

main="$(dirname "$0")/../mainsite"

. "$(dirname "$0")/rsswriter.sh"
pageroot="$(dirname "$0")/../website"

FILE="$pageroot/archive.rss"

homepage="http://blog.address.com"

open BLOGNAME $homepage "BLOGTITLE"
language "en-us"
generator "just a shell script"

IFS=$'\n'

for entry in $(grep "*" $main/archive.txt); do
	date=$(echo $entry | grep -o -e "[0-9]\+-[0-9]\+-[0-9]\+")
	link=$(echo $entry | grep -o -e "\([a-zA-Z0-9/]\|-\)*.html")
	title=$(echo $entry | grep  -o -e "\[.*\]" | sed -e "s/\[//g" | sed -e "s/\]//g")
	oitem $title "$homepage/$link" $title
	ipubDate $date
	citem
done

close
