#!/bin/bash
echo "Welcome to employee wage computation program"

WagePerHour=20
FullDayHour=8
ParttimeHour=4
wage=0
present=1
attendance=$((RANDOM%3))
if [ $attendance -eq 1 ]
then
	wage=$(($WagePerHour*$FullDayHour))
	echo "Employee is present"
	echo "Daily wage is " $wage
elif [ $attendance -eq 2 ]
then
	wage=$(($WagePerHour*$ParttimeHour))
        echo "Employee is present (PART TIME)"
        echo "Daily wage is " $wage
else
	echo "Employee is absent"
	echo "Daily wage is " $wage
fi
