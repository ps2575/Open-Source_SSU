#!/bin/bash

low=18.50
high=23.00


bmi=$( echo "$1; $2; 10000" | awk '{printf "%.2f", $1/($2*$2/$3) }' ) 

if [[ `echo "$bmi <= $low" | bc` -eq 1 ]]
then
	echo "저체중"
elif [[ `echo "$bmi < $high" | bc` -eq 1 ]]
then
	echo "정상체중"
else
	echo "과체중"
fi
