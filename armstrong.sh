#!/bin/bash

NUM=$1
SUM=0
RUN=$NUM
while [ $RUN != 0 ]
do
i=`expr $RUN % 10`
SUM=`expr $SUM + $i \* $i \* $i ` 
RUN=`expr $RUN / 10`
done

if [ $SUM == $NUM ]
then 
	echo "$NUM is an Armstrong Number"
else
	echo "$NUM is not an Armstrong Number"
fi
