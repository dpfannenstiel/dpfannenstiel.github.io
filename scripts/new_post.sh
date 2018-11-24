#!/bin/sh -x

# use -D for drafts

if [ $(basename $(pwd)) != 'dpfannenstiel.github.io' ]; then
	echo "Only run from within project root directory."
	exit 1
fi

POST_DIR="_posts"

if [ -n $1 ] && [ $1 = "-D" ]; then
	shift
	POST_DIR="_drafts"
fi

POST_TITLE="New Post"

if [ -n "$1" ]; then 
	POST_TITLE=$1
	shift
fi

# Lowercase the title
POST_NAME=$(echo "$POST_TITLE" | tr '[:upper:]' '[:lower:]')
# Replace whitespace with - 
POST_NAME=${POST_NAME// /-}
POST_DATE=$(date +"%Y-%m-%d")
POST_TIME=$(date +"%H:%M:00 %z")
POST_PATH=${POST_DIR}/${POST_DATE}-${POST_NAME}.markdown

if [ -f "$POST_PATH" ]; then
	echo "File exists at $POST_PATH"
	echo "Exiting"
	exit 1
fi

echo "---" >> $POST_PATH
echo "layout: post"  >> $POST_PATH
echo "title:  \"$POST_TITLE\"" >> $POST_PATH
echo "date:   ${POST_DATE} ${POST_TIME}" >> $POST_PATH
echo "categories: CATEGORIES" >> $POST_PATH
echo "excerpt: EXCERPT" >> $POST_PATH
echo "---" >> $POST_PATH
