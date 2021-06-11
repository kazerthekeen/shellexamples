#!/bin/bash
if test -f $1
then
	echo "Total vowels in file $(grep -oi [aeiou] $1 | grep -ci [aeiou])"
	echo "A's in file `grep -oi [a] $1 | grep -ci [a]`"
	echo "E's in file `grep -oi [e] $1 | grep -ci [e]`"
	echo "I's in file `grep -oi [i] $1 | grep -ci [i]`"
	echo "O's in file `grep -oi [o] $1 | grep -ci [o]`"
	echo "U's in file `grep -oi [u] $1 | grep -ci [u]`"
else 
	echo "File $1 Not found"
fi
