#!/bin/bash

echo "MENU : "
echo "1.ps 2.shell 3.who 4.whoami 5.date 6.user 7.pwd 8.EXIT "
echo "Enter your choice : "
read ch

case $ch in
	1)ps;;
	2)echo $SHELL;;
	3)who;;
	4)whoami;;
	5)date;;
	6)echo $USER;;
	7)pwd;;
	8)echo "Exiting..."
		exit 1;;
	*)echo "Invalid Choice";;
esac
