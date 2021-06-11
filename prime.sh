#!/bin/bash

N=$1
PRIME() {
	n=$1
	d=$2
	if [ $n -le 1 ]
	then 
		echo "COMPOSITE"
		return	
	elif [ `expr $d \* $d` -gt $n ]
	then 
		echo "PRIME"
		return
	elif [ `expr $n % $d` == 0 ] 
	then
		echo "COMPOSITE"
		return	
	else
		nd=`expr $d + 1`
		echo `PRIME $n $nd`
		return
	fi
}
echo `PRIME $N 2`
