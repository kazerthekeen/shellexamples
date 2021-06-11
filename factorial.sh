#!/bin/sh
N=$1
SUM=1
i=1
while [ $i -le $N ]
do
SUM=`expr $SUM \* $i`
i=`expr $i + 1`
done
echo $SUM
