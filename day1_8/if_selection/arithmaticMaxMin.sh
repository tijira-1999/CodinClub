#!/bin/bash
read -p "enter first number " a
read -p "enter first number " b
read -p "enter first number " c

res=($(( $a+$b*$c )) $(( $a%$b+$c )) $(( $c+$a/$b )) $(( $a*$b+$c )))
resWord=( "a+b*c" "a%b+c" "c+a/b" "a*b+c")
min=${res[0]}
max=${res[0]}
maxIndex=0
minIndex=0
for((i=0;i<4;i++))
do
	if [ ${res[$i]} -gt $max ]
	then
		max=${res[$i]}
		maxIndex=$i
	fi
	if [ ${res[$i]} -lt $min ]
        then
                min=${res[$i]}
		minIndex=$i
        fi

done
echo "result of a+b*c" $(( $a+$b*$c ))
echo "result of a%b+c" $(( $a%$b+$c ))
echo "result of c+a/b" $(( $c+$a/$b ))
echo "result of a*b+c" $(( $a*$b+$c ))
echo ""
echo "maximum is ${resWord[$maxIndex]} " $max
echo "minimum is ${resWord[$minIndex]} " $min

