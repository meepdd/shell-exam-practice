#!/bin/bash

a=$1
b=$2
summ=0

if [ ! -n $1 ] && [ ! -n $2 ]; then 
    echo "Arg $1 or $2 is not found"
    exit 1
fi

if [ $a -ge $b ]; then
    echo "$a > $b"
    exit 1
fi

for ((i=$a; i<=$b; i++))
do 
    if [ $((i%2)) -eq 0 ]; then
    summ=$((summ+i))
    fi
done 

echo "$summ"