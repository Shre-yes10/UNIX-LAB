#!/bin/bash

echo "Enter the number of items : "
read n

echo "Enter items and item code : "
for (( i=0 ; i<n ; i++ ))
do
	echo "Enter item $((i+1)) name : "
	read items[$i]
	echo "Enter item $((i+1)) code : "
	read code[$i]
	echo
done

for (( i=0 ; i<n ; i++ ))
do
	echo "${items[$i]} - ${code[$i]}">>item.txt
done

echo "Contents of item.txt : "
cat item.txt
