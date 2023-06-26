#!/bin/bash

if [[ ! -z $1 ]] && [[ ! -f $2 ]]; then
    echo "Args is not found"
    exit 1
fi 

case $1 in:
    4) echo "хорошо"
    head -n $1;;
    5) echo "может быть"
    head -n $1;;
    *) echo "not impressed"
    exit 1;;
esac 
