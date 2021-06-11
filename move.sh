#!/bin/bash

if test -f $1
then 
	cp $1 $2
	echo "file moved"
else
	echo "$1 is not a file"
fi


