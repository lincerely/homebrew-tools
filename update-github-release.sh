#!/bin/bash

BREW_FILE=$1
URL=$2
VERSION=$(echo "$URL" | sed 's/.*\/v\(.*\).tar.gz/\1/')

wget -O /tmp/release.tar.gz -o /tmp/wget-log "$URL" 
SHA256=$(sha256sum /tmp/release.tar.gz | grep -Eo '^\w+')
rm /tmp/release.tar.gz

cat $BREW_FILE |\
	sed "s/\(^\s*version\).*$/\1 \"$VERSION\"/" |\
	sed "s/\(^\s*sha256\).*$/\1 \"$SHA256\"/"

