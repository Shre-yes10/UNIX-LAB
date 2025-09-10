#!/bin/bash

file="empn.lst"
if [ ! -e "$file" ]
then
	echo "empn.lst not found"
	exit 1
fi

echo "Employee Salary Details : "
cat "$file" | while read name sal
do
	if [ "$sal" -gt 6000 ]
	then
		da=$(echo "$sal * 0.25" | bc)
	else
		da=$(echo "$sal * 0.30" | bc)
	fi

	hra=$(echo "$sal * 0.10" | bc)
	gross=$(echo "$sal + $da + $hra" | bc)

	echo "Employee Name    : $name"
	echo "Basic Salary     : $sal"
	echo "DA (Allowance)   : $da"
	echo "HRA              : $hra"
	echo "Gross Salary     : $gross"
	echo "------------------------------"
done
