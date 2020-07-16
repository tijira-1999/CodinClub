#!/bin/bash
echo "Welcome to employee wage computation program"
present=1
attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
