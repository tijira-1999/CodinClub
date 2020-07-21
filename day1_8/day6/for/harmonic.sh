#!/bin/bash
read -p "Enter a number " n
sum=1.0
for((i=2;i<=n;i++))
do
	v=$(echo "scale=4; 1/$i" | bc)
	sum=$( echo "scale=4; $sum+$v" | bc )
done
echo "$n th term is " $sum
num=0
arr[0]=1
for((i=1;i<=n;i++))
do
        arr[$i]="${arr[$(($i-1))]}+(1/$(($i+1)))"
done
echo "$n th term is " ${arr[$(($n-1))]}
