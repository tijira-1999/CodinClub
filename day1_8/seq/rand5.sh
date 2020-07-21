#!/bin/bash
a=$(( RANDOM%100 ))
b=$(( RANDOM%100 ))
c=$(( RANDOM%100 ))
d=$(( RANDOM%100 ))
e=$(( RANDOM%100 ))
sum=$(( $a+$b+$c+$d+$e ))
avg=$(( ($a+$b+$c+$d+$e)/5 ))
echo $a,$b,$c,$d,$e
echo "sum is "$sum
printf 'average is '$(echo "scale=3;$sum/5" | bc -l)
