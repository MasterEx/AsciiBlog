#!/usr/bin/env bash

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# Posts the new post generated by new-post.sh. It transform it with 
# asciidoc and places under website directory. When invoked with -r
# it reposts the last post - repost means no regeneration of archive.html.
#
# usage:
# -r : republish
# -h : help
#

newpost="$(ls -tr | tail -1)"

repost=0
# execute
while getopts ":i:rh" opt; do
  case $opt in
    r)
      repost=1
      ;;
	h)
      echo "help!" >&2
      exit
      ;;
    i)
	  newpost="$OPTARG"
	  ;;
  esac
done

postname="$(basename $newpost .txt)"
archdate="$(pwd | grep -o -e '[0-9]\+/[0-9]\+/[0-9]\+')"
#standard paths? 
main="$(dirname "$0")/../archive"
pageroot="$(dirname "$0")/../website/archive/$archdate"

mkdir -p $pageroot

LAYOUT=myBlogPost        # customized layout based to layout2.

ASCIIDOC_HTML="asciidoc --backend=xhtml11 --conf-file=$(dirname "$0")/../layouts/${LAYOUT}.conf --attribute icons --attribute iconsdir=$(dirname "$0")/../images/icons --attribute=badges --attribute=revision=$VERS  --attribute=date=$DATE"

$ASCIIDOC_HTML -o"$pageroot/${postname}.html" "$main/$archdate/$newpost"

if [ $repost -eq 1 ]; then
	exit
fi

#todo: in repost republish the archive with new title

LAYOUT=myBlog        # customized layout based to layout2.
main="$(dirname "$0")/../mainsite"
pageroot="$(dirname "$0")/../website"

postentry="* $(echo $archdate | sed 's/\//-/g'): link:archive/$archdate/${postname}.html[$(head -1 $newpost)]"
cat "$main/archive.txt" | sed "4i $postentry" > "/tmp/archive.txt"

mv /tmp/archive.txt "$main/archive.txt"

ASCIIDOC_HTML="asciidoc --backend=xhtml11 --conf-file=$(dirname "$0")/../layouts/${LAYOUT}.conf --attribute icons --attribute iconsdir=$(dirname "$0")/../images/icons --attribute=badges --attribute=revision=$VERS  --attribute=date=$DATE"

$ASCIIDOC_HTML -o"$pageroot/archive.html" "$main/archive.txt"

