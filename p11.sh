#!/bin/bash

echo "Enter the number of units consumed : "
read units

if [ "$units" -le 200 ]
then
	amt=$(echo "$units * 0.80" | bc)
elif [ "$units" -le 300 ]
then
	amt=$(echo "200*0.80 + ($units-200) * 0.90" | bc)
else
	amt=$(echo "200*0.80 + 100*0.90 + ($units-300) * 1.0" |bc)
fi

amt=$(echo "$amt + 100" | bc)

if [ "$(echo "$amt > 400" | bc)" -eq 1 ]
then
	amt=$(echo "$amt * 1.15" | bc)
fi

echo "Total Amount to be paid : $amt"
