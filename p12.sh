#!/bin/bash

echo "MENU : "
echo "1.ADDITION 2.SUBTRACTION 3.MULTIPLICATION 4.DIVISION 5.MODULO DIVISION"
echo "Enter your choice : "
read ch

echo "Enter two numbers : "
read r1 r2

case $ch in
	1)result=$(echo "$r1 + $r2" | bc)
	  echo "RESULT : $result" ;;
	2)result=$(echo "$r1 - $r2" | bc)
	  echo "RESULT : $result" ;;
	3)result=$(echo "$r1 * $r2" | bc)
	  echo "RESULT : $result" ;;
	4)if [ "$r2" -eq 0 ]
	  then
		  echo "ERROR : Division by zero"
	  else
		  result=$(echo "$r1 / $r2" | bc)
		  echo "RESULT : $result" 
          fi
	  ;;
	5)if [ "$r2" -eq 0 ]
	  then
		  echo "ERROR : Modulus by zero"
	  else
		  result=$(echo "$r1 % $r2" | bc)
		  echo "RESULT : $result" 
	  fi
	  ;;
	*)echo "Invalid Choice" ;;
esac


