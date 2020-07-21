#!/bin/bash
var1=$(( RANDOM ))
var2=$(( RANDOM ))
echo "var1= $var1 and var2= $var2"
if [ $var1 -gt $var2 ]
then 
   echo "$var1 is greater"
elif [ $var1 -eq $var2 ]
then
   echo "both equal"
else
   echo "$var2 is greater or equal"
fi
