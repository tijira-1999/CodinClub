#!/bin/bash
declare -A birth
month=(JAN FEB MAR APR MAY JUN JUL AUG SEPT OCT NOV DEC)
for((i=1;i<=50;i++))
do
	x=$(( RANDOM%12+1 ))
	arr[$(($x-1))]="${arr[$x-1]} Person-$i"
	birth[${month[$(($x-1))]}]=${arr[$(($x-1))]}
done
echo "Birthday in respective months are"
for key in ${!birth[@]}
do
	echo "$key ":${birth[$key]}
done
