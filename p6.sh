#!/bin/bash

echo "Enter username : "
read user

if who | cut -d " " -f 1 | grep -wq "$user" 
then
	echo "User Exists"
else
	echo "User Doesn't Exists"
fi

