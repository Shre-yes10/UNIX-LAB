#!/bin/bash

echo "Enter Code : "
read code
echo "Enter Descriptor : "
read desc

echo
if [[ $code =~ ^[0-9]+$ ]]
then
	if [[ $desc =~ ^[a-zA-Z]+$ ]]
	then
		echo "$code $desc added successfully"
		echo "$code - $desc" >>desig.lst
	else
		echo "$desc is not an alphabet string"
	fi
else
	echo "$code is not a number"
fi

echo
echo "Contents of desig.lst : "
cat desig.lst
