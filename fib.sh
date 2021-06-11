#!/bin/sh

# This constructs a fibunocci sequence of length 10 given 2 starting values
# This uses Lists made by Ezra

echo "Lets start a fibunocci sequence"
read -p "Enter the first number " N1
read -p "Enter the second number " N2
FIB[1]=$N1
FIB[2]=$N2
echo "${#FIB[@]}"
while [ ${#FIB[@]} -lt 10 ]
do
L=$(expr ${#FIB[@]} + 1)
FIB[$L]=$(expr ${FIB[$(expr $L - 1)]} + ${FIB[$(expr $L - 2)]} )
done

echo "Here are the first 10 numbers in your sequence"
echo "${FIB[@]}"
