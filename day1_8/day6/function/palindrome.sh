#!/bin/bash

read -p "Enter first number " a
read -p "Enter second number " b

function palindrome() {
	i=$1
	num=0
	while [ $i -ne 0 ]
	do
		rem=$(($i%10))
		num=$(( $(($num*10))+rem )) 
		i=$(($i/10))
	done
	if [ $num -eq $1 ]
	then
		echo "is a palindrome number"
	else
		echo "is not a palindrome number"
	fi
}

temp=b
result1=$( palindrome $a )
echo "$a "$result1
result2=$(palindrome $b )
echo "$b "$result2

