#!/bin/bash
echo "Welcome to employee wage computation program"

WagePerHour=20
FullDayHour=8
ParttimeHour=4
WorkingDayPerMonth=20
wage=0
present=1
attendance=$((RANDOM%3))
case "$attendance" in
1)
	wage=$(($WagePerHour*$FullDayHour*$WorkingDayPerMonth))
	echo "Employee is present"
	echo "Monthly wage is " $wage
	;;
2)
	wage=$(($WagePerHour*$ParttimeHour*$WorkingDayPerMonth))
        echo "Employee is present (PART TIME)"
        echo "Monthly wage is " $wage
	;;
0)
	echo "Employee is absent"
	echo "MOnthly wage is " $wage
	;;
*)
	echo "Invalid"
	;;
esac

