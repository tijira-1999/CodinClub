#!/bin/bash

ft=12
echo "42 feet= " $((ft*42)) " inches"
area=$(( 60*40 ))
meter=0.092903
#resArea=$(echo "scale=4; $area*$meter" | bc)
echo "area of one field "$(echo "scale=4; $area*$meter" | bc) " sq.m"
acre=0.000247105
echo "area of 25 fields" $(echo "scale=4; $area*$meter*$acre" | bc) " acre"
