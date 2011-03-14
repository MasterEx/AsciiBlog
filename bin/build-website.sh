#!/bin/sh

VERS="8.1.0"
DATE="2006-10-22"

# Leave the desired layout uncommented.
#LAYOUT=layout1      # Tables based layout.
#LAYOUT=layout2      # CSS based simulated frames layout.
LAYOUT=myBlog        # customized layout based to layout2.

main="$(dirname "$0")/../mainsite"
pageroot="$(dirname "$0")/../website"

# Copy the need files to the destination directory
cp -r "$(dirname "$0")/../images" "$(dirname "$0")/../javascripts" "$(dirname "$0")/../styles" $pageroot

ASCIIDOC_HTML="asciidoc --backend=xhtml11 --conf-file=$(dirname "$0")/../layouts/${LAYOUT}.conf --attribute icons --attribute iconsdir=$(dirname "$0")/../images/icons --attribute=badges --attribute=revision=$VERS  --attribute=date=$DATE"

$ASCIIDOC_HTML -a index-only -o"$pageroot/index.html" "$main/index.txt"
$ASCIIDOC_HTML -o"$pageroot/about.html" "$main/about.txt"
$ASCIIDOC_HTML -d "book" -o"$pageroot/archive.html" "$main/archive.txt"
$ASCIIDOC_HTML -d "book" -o"$pageroot/contact.html" "$main/contact.txt"
#$ASCIIDOC_HTML -a toc -a numbered userguide.txt
#$ASCIIDOC_HTML -d manpage manpage.txt
#$ASCIIDOC_HTML downloads.txt
#$ASCIIDOC_HTML latex-backend.txt
#$ASCIIDOC_HTML README.txt
#$ASCIIDOC_HTML INSTALL.txt
#$ASCIIDOC_HTML CHANGELOG.txt
#$ASCIIDOC_HTML README-website.txt
#$ASCIIDOC_HTML support.txt
#$ASCIIDOC_HTML source-highlight-filter.txt
#$ASCIIDOC_HTML music-filter.txt
#$ASCIIDOC_HTML a2x.1.txt
#$ASCIIDOC_HTML asciimath.txt
