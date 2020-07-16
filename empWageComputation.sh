#!/bin/bash
echo "Welcome to employee wage computation program"

WagePerHour=20
FullDayHour=8
wage=0
present=1
attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	wage=$(($WagePerHour*$FullDayHour))
	echo "Employee is present"
	echo "Daily wage is " $wage
else
	echo "Employee is absent"
	echo "Daily wage is " $wage
fi
