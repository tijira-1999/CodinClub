#!/bin/bash
for((i=0;i<10;i++))
do
	x=$(( RANDOM%$((999-100+1)) + 100 ))
	arr[$i]=$x
done
echo "array is "${arr[@]}

first=1000
second=1000

firstlarge=99
secondlarge=99

for((j=0;j<${#arr[@]};j++))
do
	if [ ${arr[$j]} -lt $first ]
	then
		second=$first
		first=${arr[$j]}
	elif [ ${arr[$j]} -lt $second ] && [ ${arr[$j]} -ne $first ]
	then
		second=${arr[$j]}
	fi

	if [ ${arr[$j]} -gt $firstlarge ]
        then
                secondlarge=$firstlarge
                firstlarge=${arr[$j]}
        elif [ ${arr[$j]} -gt $secondlarge ] && [ ${arr[$j]} -ne $firstlarge ]
        then
                secondlarge=${arr[$j]}
        fi

done
echo "2nd largest number is " $secondlarge
echo "2nd smallest number is " $second

