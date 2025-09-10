#!/bin/bash

echo "Enter the number of items : "
read n

for (( i=1 ; i<=n ; i++ ))
do
	echo "Enter item $i name : "
	read item
	echo "Enter item $i code : "
	read code
	echo "$item - $code" >>item.txt
	echo
done

echo "Contents of item.txt : "
cat item.txt
