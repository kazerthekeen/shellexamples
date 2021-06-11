#!/bin/bash

A=$1
B=$3
op=$2
case $op in
	"+")
		echo `expr $A + $B`
	;;
	"-")
		echo `expr $A - $B`
	;;
	"/")
		echo `expr $A / $B`
	;;
	"*")
		echo `expr $A \* $B`
	;;
	"x")
		echo `expr $A \* $B`
	;;
	"%")
		echo `expr $A % $B`
	;;
	*)
		echo "Unknown operator, don't forget to do \\* or x for multiplication"
	;;
esac
