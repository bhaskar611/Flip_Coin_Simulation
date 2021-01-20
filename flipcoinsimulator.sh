#! /bin/bash
count=21
headscount=0
tailscount=0
flipscount=0
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
    if(( $headscount == $count || $tailscount == $count ))
    then
        break
    fi 
done
echo "Heads count is" $headscount "and Tails Count is" $tailscount
if(( $headscount > $tailscount ))
then
    echo "Heads won by" $(( $headscount - $tailscount ))
elif(($tailscount > $headscount))
then
    echo "Tails won by" $(( $tailscount - $headscount ))
else    
    echo "Tie"
fi

