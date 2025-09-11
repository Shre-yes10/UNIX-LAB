#!/bin/bash
echo "Enter the Filename : "
read file

if [ ! -e $file ]
then
	echo "File Doesn't Exists"
	exit 1
fi

echo "Enter Pattern : "
read pat

grep -o "$pat" "$file"
if [ $? -eq 0 ]
then
	echo "Pattern Found"
else
	echo "Pattern Not Found"
fi
