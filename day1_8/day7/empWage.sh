#!/bin/bash
isPartTime=1
isFullTime=2
#randomCheck=$(( RANDOM%3 ))
empHours=0
wagePerHour=20
wage=0
workDay=5

for((i=0;i<=$workDay;i++))
do
	randomCheck=$(( RANDOM%3 ))
	if [ $randomCheck -eq $isPartTime ]
	then
		empHours=8
	elif [ $randomCheck -eq $isFullTime ]
	then
		empHours=4
	else
		empHours=0
	fi
	wage=$(( $empHours * $wagePerHour ))

	arr[$i]=$wage
done
echo ${arr[@]}
