#!/bin/bash

sum=0
count=0

while true
do
    echo "Enter a number:"
    read input
    if [ "$input" = "a" ]; then
        break
    fi
    sum=$((sum + input))
    count=$((count + 1))
done

if [ $count -eq 0 ]; then
    echo "No numbers were entered."
else
    average=$(echo "$sum / $count" | bc -l)
    echo "The average of the $count numbers entered is $average"
fi
