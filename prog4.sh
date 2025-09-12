#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

filename="$1"

if [ ! -e "$filename" ]; then
    echo "File does not exist"
    exit 1
fi

size=$(stat -c %s "$filename")
permissions=$(stat -c %A "$filename")

if [ -L "$filename" ]; then
    link_status="Yes"
else
    link_status="No"
fi

echo "File name: $filename"
echo "Size: $size"
echo "Permissions: $permissions"
echo "Symbolic link: $link_status"
