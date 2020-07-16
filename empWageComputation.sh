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

declare -A daily

WagePerHour=20
FullDayHour=8
ParttimeHour=4
WorkingDayPerMonth=20
TotalHour=0
TotalDays=0
wage=0
present=1
i=1
while [ $TotalHour -ne 100 ] && [ $TotalDays -ne 20 ]
do
attendance=$((RANDOM%3))
case "$attendance" in
1)
	TotalDays=$(($TotalDays+1))
	workHour=$( workhour 1)
	daily[Day$i]=$(($workHour*$WagePerHour))
	i=$(($i+1))
	TotalHour=$(($TotalHour+$workHour))
	;;
2)
	TotalDays=$(($TotalDays+1))
	workHour=$( workhour 2)
	daily[Day$i]=$(($workHour*$WagePerHour))
        i=$(($i+1))
        TotalHour=$(($TotalHour+$workHour))
	;;
0)
	workHour=$( workhour 0)
	daily[Day$i]=$(($workHour*$WagePerHour))
        i=$(($i+1))
	TotalDays=$(($TotalDays+1))
	;;
*)
	echo "Invalid"
	;;
esac
done
for key in ${!daily[@]}
do
	echo $key: ${daily[$key]}
done

if [ $TotalHour -ge 100 ]
then
	wage=$(($WagePerHour*$TotalHour))
	echo "Monthly wage is " $wage
else
	wage=$(($WagePerHour*$TotalHour))
        echo "Monthly wage is " $wage
fi
