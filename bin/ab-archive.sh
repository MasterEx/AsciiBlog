#!/usr/bin/env bash

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx
#
# Description:
# Creates the website/asrchive.html
#

archive="$(dirname "$0")/../website/archive"

path='../'
. "$(dirname "$0")/../layouts/archiveLayout.sh"

echo $head > "$archive/index.html"
for year in $(ls $archive | grep -v "index.html"); do

	path='../../'
	. "$(dirname "$0")/../layouts/archiveLayout.sh"
	echo $head > "$archive/$year/index.html"
	for month in $(ls $archive/$year | grep -v "index.html"); do
		#echo "year $year month $month"
		
		
		path='../../../'
		. "$(dirname "$0")/../layouts/archiveLayout.sh"
		echo $head > "$archive/$year/$month/index.html"
		for day in $(ls $archive/$year/$month | grep -v "index.html"); do
		
			path='../../../../'
			. "$(dirname "$0")/../layouts/archiveLayout.sh"
			echo $head > "$archive/$year/$month/$day/index.html"
			for article in $(ls $archive/$year/$month/$day/*.html| grep -v "index.html"); do
				#echo "article: $article"
				echo "<a href=\""$article"\">"$(head -1 $(dirname "$0")/../archive/$year/$month/$day/$(basename $article .html).txt)"</a><br/>" >> "$archive/$year/$month/$day/index.html"
			done			
			echo $tail >> "$archive/$year/$month/$day/index.html"
			
			echo "<a href=\""$day"\">"$day"</a><br/>" >> "$archive/$year/$month/index.html"				
			
		done
		path='../../../'
		. "$(dirname "$0")/../layouts/archiveLayout.sh"
		echo $tail >> "$archive/$year/$month/index.html"
		
		echo "<a href=\""$month"\">"$month"</a><br/>" >> "$archive/$year/index.html"
	done
	path='../../'
	. "$(dirname "$0")/../layouts/archiveLayout.sh"
	echo $tail >> "$archive/$year/index.html"
	
	echo "<a href=\""$year"\">"$year"</a><br/>" >> "$archive/index.html"
	#ls $archive/$year
done
path='../'
. "$(dirname "$0")/../layouts/archiveLayout.sh"
echo $tail >> "$archive/index.html"
