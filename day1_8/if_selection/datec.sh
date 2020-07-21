#!/bin/bash 
read -p "Enter month and date " month day
if [ $month = "march" ]
then
	if [ $day -ge 20 ] && [ $day -le 31 ]
	then
		echo "true"
	else
		echo "false"
	fi
elif [ $month = "june" ]
then
	if [ $day -ge 1 ] && [ $day -le 20 ] 
        then
                echo "true"
	else
                echo "false"
        fi
elif [ $month = "april" ]
then
	if [ $day -ge 1 ] && [ $day -le 30 ]
	then
		echo "true"
	else
                echo "false"
	fi
elif [ $month = "may" ]
then
	if [ $day -ge 1 ] && [ $day -le 31 ]
	then
		echo "true"
	else
                echo "false"
	fi
else
	echo "false"
fi
