#!/bin/sh
chmod 777 *
if [ -z "$1" ];then 
echo "Usage:$0 <string>"
exit 1
fi
input="$1"

rs=$(echo "$input" | tr '[:lower:][:upper:]' '[:upper:][:lower:]')

echo "$rs"

