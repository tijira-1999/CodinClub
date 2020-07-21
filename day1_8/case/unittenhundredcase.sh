#!/bin/bash
read -p "Enter a number " num
ar=($(( $num%10 )) $(( $num/10%10 )) $(( $num/100%10 )) $(( $num/1000%10 )) $(( $num/10000%10 )) $(( $num/100000%10 )) $(( $num/1000000%10 )) $(( $num/10000000%10 )) $(( $num/100000000%10 ))) 
word=(unit ten hundred thousand ten_thousand one_lakh ten_lakh one_crore ten_crore)
for ((i=0;i<${#num};i++))
do
	echo "digit at ${word[$i]} place is " ${ar[$i]}
done

