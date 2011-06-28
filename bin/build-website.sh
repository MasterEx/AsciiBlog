#!/bin/sh

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# This is an altered build-website.sh from the asciidoc project.
# It builds the static webpages except the archive.html and the posts.
#

VERS="8.1.0"
DATE="2006-10-22"

LAYOUT=myBlog        # customized layout based to layout2 of asciidoc.

main="$(dirname "$0")/../mainsite"
pageroot="$(dirname "$0")/../website"

# Copy the need files to the destination directory
cp -r "$(dirname "$0")/../images" "$(dirname "$0")/../javascripts" "$(dirname "$0")/../styles" $pageroot

ASCIIDOC_HTML="asciidoc --backend=xhtml11 --conf-file=$(dirname "$0")/../layouts/${LAYOUT}.conf --attribute icons --attribute iconsdir=$(dirname "$0")/../images/icons --attribute=badges --attribute=revision=$VERS  --attribute=date=$DATE"

$ASCIIDOC_HTML -a index-only -o"$pageroot/index.html" "$main/index.txt"
$ASCIIDOC_HTML -d "book" -o"$pageroot/archive.html" "$main/archive.txt"
$ASCIIDOC_HTML -o"$pageroot/about.html" "$main/about.txt"
