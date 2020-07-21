#!/bin/bash
read -p "Enter a single digit number for weekday " num
#word=(sunday monday tuesday wednesday thursday friday saturday )
#echo "${word[$num]}"
if [ $num -eq 1 ]
then
	echo "sunday"
elif [ $num -eq 2 ]
then
	echo "monday"
elif [ $num -eq 3 ]
then
	echo "tuesday"
elif [ $num -eq 4 ]
then
	echo "wednesday"
elif [ $num -eq 5 ]
then
	echo "thursday"
elif [ $num -eq 6 ]
then
	echo "friday"
elif [ $num -eq 7 ]
then
	echo "saturday"
else
	echo "enter a valid single digit weekday number"
fi
