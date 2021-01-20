#! /bin/bash
count=21
headscount=0
tailscount=0
flipscount=0
difference=2
while(( 1 ))
do
    flipscount=$(($flipscount + 1))
    flip=$((RANDOM%2))
    if((flip == 0 ))
    then
        headscount=$(($headscount + 1 ))
    else
        tailscount=$(($tailscount + 1 ))
    fi
        diff=$(( $headscount - $tailscount ))
    if(( $headscount == $count && $diff >= $difference ))
    then
        echo "Heads won by" $diff "points"
        break
    elif(( $tailscount == $count && $diff >= $difference ))
    then
         echo "Tails won by" $diff "points"
         break
    fi

done
echo "Heads count is" $headscount "and Tails Count is" $tailscount


