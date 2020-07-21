#!/bin/bash
echo "enter three integers"

sum=0
for((j=0;j<3;j++))
do
	read -p "enter $((j+1)) integer " x
	arr[$j]=$x
	sum=$(($sum+${arr[$j]}))
done
echo "the array is " ${arr[@]}
echo "sum is " $sum
if [ $sum -eq 0 ]
then
	echo "sm of three integers is zero"
fi
