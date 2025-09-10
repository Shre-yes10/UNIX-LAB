#!/bin/bash
echo "Enter Filename :"
read file

if [ ! -e $file ]
then
	echo "File Doesn't Exists"
	exit 1
fi

ls -l $file | cut -d " " -f 5,1,2,9

