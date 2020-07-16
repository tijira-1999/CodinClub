#!/bin/bash
function workhour() {
	case $1 in
	1)
		echo 8
		;;
	2)
		echo 4
		;;
	0)
		echo 0
		;;
	esac
}
echo "Welcome to employee wage computation program"

WagePerHour=20
FullDayHour=8
ParttimeHour=4
WorkingDayPerMonth=20
TotalHour=0
TotalDays=0
wage=0
present=1
while [ $TotalHour -le 100 ] && [ $TotalDays -le 20 ]
do
attendance=$((RANDOM%3))
case "$attendance" in
1)
	TotalDays=$(($TotalDays+1))
	workHour=$( workhour 1)
	TotalHour=$(($TotalHour+$workHour))
	;;
2)
	TotalDays=$(($TotalDays+1))
	workHour=$( workhour 2)
        TotalHour=$(($TotalHour+$workHour))
	;;
0)
	TotalDays=$(($TotalDays+1))
	;;
*)
	echo "Invalid"
	;;
esac
done
if [ $TotalHour -ge 100 ]
then
	wage=$(($WagePerHour*$TotalHour))
	echo "Monthly wage is " $wage
else
	wage=$(($WagePerHour*$TotalHour))
        echo "Monthly wage is " $wage
fi
