#!/bin/bash

#Counts to 10

v=1
for number in {1..10}
do
echo $number
done

numbers={1..10}
echo "${numbers[@]}"
