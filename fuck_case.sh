#!/bin/bash

a=5
case $a in 
    1) echo "a equal 1";;
    5) echo "a equal 5";;
    *) echo "equal $a";;
esac

while [[ -n $1 ]]
do 
    case $1 in 
        -f) echo "Arg 1 for -f equal $2"
        shift;;
        -o) echo "Arg for -o equal $2";;
        shift;;
        --)shift
        break;;
        *) echo "Unitiled arg $l"
    esac 
    shift
done 