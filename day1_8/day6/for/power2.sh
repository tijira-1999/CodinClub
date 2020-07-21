#!/bin/bash
read -p "Enter a number " num
for((i=0;i<=num;i++))
do
	echo "2 power $i equals " $((2**$i))
done

