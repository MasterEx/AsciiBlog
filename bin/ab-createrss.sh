#!/usr/bin/env bash

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# Uses the rsswriter.sh to create an rss which displays all the posts.
#

main="$(dirname "$0")/../mainsite"

. "$(dirname "$0")/rsswriter.sh"
pageroot="$(dirname "$0")/../website"

FILE="$pageroot/archive.rss"

homepage="http://masterex.github.com"

open "$homepage/archive.rss" "Master's Touch" $homepage "Master_ex's personal blog"
language "en-us"
generator "just a shell script"

IFS=$'\n'

for entry in $(grep "*" $main/archive.txt); do
	date=$(echo $entry | grep -o -e "[0-9]\+-[0-9]\+-[0-9]\+")
	date=$(date -d $date -R)
	link=$(echo $entry | grep -o -e "\([a-zA-Z0-9/]\|-\)*.html")
	title=$(echo $entry | grep  -o -e "\[.*\]" | sed -e "s/\[//g" | sed -e "s/\]//g")
	description=$(grep -Pzo '(?s)//rss.*//rss' "../"$(echo $link|sed -e "s/.html/.txt/g") | head -n -1  |tail -n +2 | sed -e "s/\\n/PERIKLIS/g")
	
	oitem $title "$homepage/$link" $description
	ipubDate $date
	guid "$homepage/$link"
	citem
done

close
