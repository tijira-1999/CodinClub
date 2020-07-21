#!/bin/bash
isPartTime=1
isFullTime=2
randomCheck=$(( RANDOM%3 ))
empHours=0
wagePerHour=20
wage=0
if [ $randomCheck -eq $isPartTime ]
then 
	empHours=8
	echo "Employee is present"
elif [ $randomCheck -eq $isFullTime ]
then
	empHours=4
	echo "Employee is parttime"
else
	echo "Employee is absent"
   
fi
wage=$(( $empHours * $wagePerHour ))
	echo "wage is " $wage



