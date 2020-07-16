#!/bin/bash
echo "Welcome to employee wage computation program"

WagePerHour=20
FullDayHour=8
ParttimeHour=4
wage=0
present=1
attendance=$((RANDOM%3))
case "$attendance" in
1)
	wage=$(($WagePerHour*$FullDayHour))
	echo "Employee is present"
	echo "Daily wage is " $wage
	;;
2)
	wage=$(($WagePerHour*$ParttimeHour))
        echo "Employee is present (PART TIME)"
        echo "Daily wage is " $wage
	;;
0)
	echo "Employee is absent"
	echo "Daily wage is " $wage
	;;
*)
	echo "Invalid"
	;;
esac

