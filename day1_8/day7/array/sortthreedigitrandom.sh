#!/bin/bash
for((i=0;i<10;i++))
do
	x=$(( RANDOM%$((999-100+1)) + 100 ))
	arr[$i]=$x
done
echo "array is "${arr[@]}

for((i=0;i<10;i++))
do
	for((j=$(($i+1));j<10;j++))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "sorted array is " ${arr[*]}
echo "2nd largest element is " ${arr[8]}
echo "2nd smallest element is " ${arr[1]}
