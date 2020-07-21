#!/bin/bash
day=$1
month=$2
start_date= date -d "March 20" +"%m%d"
end_date= date -d "June 20" +"%m%d"
check_date= date -d "$2 $1" +"%m%d"

if [ check_date >= start_date ] && [ check_date <= end_date ]
then
	echo "true"
else
	echo "false"
fi
