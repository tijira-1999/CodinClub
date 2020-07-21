#!/bin/bash
for((i=0;i<5;i++))
do
	read -p " enter $((i+1)) three digit number " nos[$i]
done
echo "number entered are"
for((i=0;i<5;i++))
do
	echo ${nos[$i]}
done

small=${nos[0]}
greatest=${nos[0]}

for((i=0;i<5;i++))
do
	if [ ${nos[$i]} -lt $small ]; then
		small=${nos[$i]}
	elif [ ${nos[$i]} -gt $greatest ]; then
		greatest=${nos[$i]}
	fi
done

echo "smallest number in an array is $small"
echo "greatest number in an array is $greatest"

