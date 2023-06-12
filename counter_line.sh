#!/bin/bash

if [ ! -n $1 ] && [ ! -n $2 ] && [ ! -n $3 ]; then
    echo "Please, give args"
    exit 1
fi

if [ ! -n $1 ]; then
    echo "$1 is not found"
    exit 1
fi 

if [ ! -f $2 ]; then 
    echo "Output file is not found, initialize creating..."
    touch "$2"
fi

grep -c "$3" "$1" > "$2"

echo "Process completed"


