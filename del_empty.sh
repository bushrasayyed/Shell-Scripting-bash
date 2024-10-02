#!/bin/sh
chmod 777 *
if [ -z "$1" ];then
echo "Usage:$0 filename"
exit 1
fi

if [ ! -f "$1" ];then
echo "File not found !"
exit 1
fi

sed '/^$/d' "$1" > temp_file && mv temp_file "$1"
echo "Empty lines removed from $1"

