#!/bin/bash

#Script found multiplication arg $1 - Это высер какой-то, но ладно

mltptn=1
if [[ ! -n $1 ]]; then
    echo "Arg $1 is not found"
    break
fi 

for (( i=1; i<=$1; i++ ))
do 
    mltptn=$(($mltptn*$1))
done 

echo "$mltptn"

