#!/bin/bash

if [[ ! -f $1 ]] && [[ ! -z $1 ]]; then 
    echo "arg is not found or file is empty"
    exit 1
fi 
count=$(cat $1 | wc -l)

if [[ $count -ge 5 ]]; then
    echo "5"
else 
    echo "4"
fi 
