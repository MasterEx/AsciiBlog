#!/bin/sh

### Created by Periklis Master_ex Ntanasis ###
### https://gist.github.com/gists/1047986  ###

# global variables
FILE="deafult.rss"

function open {
echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>
<rss xmlns:content=\"http://purl.org/rss/1.0/modules/content/\" xmlns:wfw=\"http://wellformedweb.org/CommentAPI/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:atom=\"http://www.w3.org/2005/Atom\" xmlns:sy=\"http://purl.org/rss/1.0/modules/syndication/\" xmlns:slash=\"http://purl.org/rss/1.0/modules/slash/\" version=\"2.0\">
  <channel>
    <atom:link href=\"$1\" rel=\"self\" type=\"application/rss+xml\"/>
    <title>$2</title>
    <link>$3</link>
    <description>$4</description>" > $FILE
}

function close {
echo "  </channel>
</rss>" >> $FILE
}

#don't forget to set description
function oitem {
echo "    <item>
        <title>$1</title>
        <link>$2</link>
        <description>$1</description>
        <content:encoded>
<![CDATA[
		$description
		]]>
</content:encoded>
        ">> $FILE
}

function citem {
echo "    </item>">> $FILE
}

function language {
	echo "    <language>$1</language>">> $FILE
}

function copyright {
	echo "    <copyright>$1</copyright>">> $FILE
}

function managingEditor {
	echo "    <managingEditor>$1</managingEditor>">> $FILE
}

function webMaster {
	echo "    <webMaster>$1</webMaster>">> $FILE
}

function pubDate {
	echo "    <pubDate>$1</pubDate>">> $FILE
}

function lastBuildDate {
	echo "    <lastBuildDate>$1</lastBuildDate>">> $FILE
}

function category {
	echo "    <category>$1</category>">> $FILE
}

function generator {
	echo "    <generator>$1</generator>">> $FILE
}

function docs {
	echo "    <docs>$1</docs>">> $FILE
}

function cloud {
	echo "    <cloud domain=\"$1\" port=\"$2\" path=\"$3\" registerProcedure=\"$4\" protocol=\"$5\" />">> $FILE
}

function ttl {
	echo "    <ttl>$1</ttl>">> $FILE
}

function image {
	echo "    <image>
	  <url>$1</url>
	  <title>$2</title>
	  <link>$3</link>
    </image>">> $FILE
}

function rating {
	echo "    <rating>$1</rating>">> $FILE
}

function textInput {
	echo "    <textInput>
	  <title>$1</title>
	  <description>$2</description>
	  <name>$3</name>
	  <link>$4</link>
    </textInput>">> $FILE
}

function skipHours {
	echo "    <skipHours>$1</skipHours>">> $FILE
}

function skipDays {
	echo "    <skipDays>$1</skipDays>">> $FILE
}

function author {
	echo "        <author>$1</author>">> $FILE
}

function category {
	echo "        <category>$1</category>">> $FILE
}

function categoryd {
	echo "        <category domain=\"$1\">$2</category>">> $FILE
}

function comments {
	echo "        <comments>$1</comments>">> $FILE
}

function enclosure {
	echo "        <enclosure>$1</enclosure>">> $FILE
}

function guid {
	echo "        <guid>$1</guid>">> $FILE
}

function ipubDate {
	echo "        <pubDate>$1</pubDate>">> $FILE
}

function source {
	echo "        <source>$1</source>">> $FILE
}

