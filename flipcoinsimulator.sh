#! /bin/bash

flip=$((RANDOM%2))
if (($flip == 0))
then
    echo "head Wins"
else
    echo "Tail Wins"
fi
