#!/bin/bash
echo "Think a number between 1 to 100 "
low=1
high=100
mid=50
while [ $low -le $high ]
do
	mid=$(( $(($high+$low))/2 ))
	echo "Enter 1 if the number is greater than $mid"
	echo "Enter 2 if the number is smaller than $mid"
	echo "Enter 0 if the number is equal $mid"
	read choice
	case "$choice" in
	1)
		low=$(($mid+1))
		;;
	2)
		high=$(($mid-1))
		;;
	0)
		echo "The number is " $mid
		break
		;;
	*)
		echo "invalid choice"
		;;
	esac
done
