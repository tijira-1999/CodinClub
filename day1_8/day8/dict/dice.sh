#!/bin/bash

declare -A dice

for (( i=1;i<7;i++))
do
	dice[$i]=0
done
x=1
min=1
while [ ${dice[$x]} -ne 10 ]
do
	x=$(( $((RANDOM%6))+1))
	dice[$x]=$((${dice[$x]}+1))
done
for key in "${!dice[@]}"
do
	if [ ${dice[$key]} -eq 10 ]
	then
		max=$key
	fi
	if [ ${dice[$key]} -lt ${dice[$min]} ]
	then
		min=$key
	fi
done
echo "dice number $max reached maximum times " ${dice[$max]}
echo "dice number $min reached minimum times " ${dice[$min]}
