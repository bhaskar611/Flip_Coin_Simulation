#!/bin/bash
	read -p "Enter no of times to flip: " n
	headscount=0
	tailscount=0
	for((i = 1; i <= n; i++ ))
	do
	    flip=$((RANDOM%2))
	    if(( flip == 0 ))
	    then
	        headscount=$(($headscount + 1))
	    else
	        tailscount=$(($tailscount + 1 ))
	    fi 
	done
	echo "Heads count is $headscount and Tails Count is $tailscount"
	if(( $headscount > $tailscount ))
	then
	    echo "Winner is Heads"
	elif(($tailscount > $headscount ))
	then
	    echo "Winner is Tails"
	else    
	    echo "Tie"
	fi
