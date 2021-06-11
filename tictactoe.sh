#!/bin/sh

# Author: Ezra
BOARD[0]="N" 
BOARD[1]="1"
BOARD[2]="2"
BOARD[3]="3"
BOARD[4]="4"
BOARD[5]="5"
BOARD[6]="6"
BOARD[7]="7"
BOARD[8]="8"
BOARD[9]="9"

WINNER="-1"

print_board() {
	echo ""
	echo "${BOARD[1]}|${BOARD[2]}|${BOARD[3]}"
	echo "-|-|-"
	echo "${BOARD[4]}|${BOARD[5]}|${BOARD[6]}"
	echo "-|-|-"
	echo "${BOARD[7]}|${BOARD[8]}|${BOARD[9]}"
	echo ""
}

CHECK( ) {

	if [ ${BOARD[$1]} == ${BOARD[$2]} ]
	then
		if [ ${BOARD[$3]} == ${BOARD[$2]} ]
		then
			echo ${BOARD[$1]}
		else
			echo $4
		fi
	else
		echo $4
	fi
}

FULL () {
	if [ $1 != "-1" ]
	then 
		echo $R
		return
	fi
	valid="No-one!"
	for i in {1..9}
	do
		if [ ${BOARD[$i]} == $i ]
		then 
			echo $R
			return
		fi
	done
	echo $valid		
}

WINNER_IS () {
	R="-1"
	R=`CHECK 1 2 3 $R`
	R=`CHECK 1 5 9 $R`	
	R=`CHECK 1 4 7 $R`
	R=`CHECK 4 5 6 $R`
	R=`CHECK 7 8 9 $R`
	R=`CHECK 7 5 3 $R`
	R=`CHECK 2 5 8 $R`
	R=`CHECK 3 6 9 $R`
	R=`FULL $R`
	echo $R
}

INPUT () {
	read -p "Your move $1: " MOVE
	if [ ${BOARD[$MOVE]} -eq $MOVE ]
	then 
		BOARD=(${BOARD[@]//$MOVE/$1})
	else
		echo "Invalid move try again"
		INPUT
	fi
}


while [ $WINNER == "-1" ]
do 
	print_board
	INPUT "X"	
	WINNER=`WINNER_IS`
	if [ $WINNER != "-1" ]
	then
		break
	fi
	print_board
	INPUT "O"	
	WINNER=`WINNER_IS`	
done

echo "The Winner is ${WINNER}"
