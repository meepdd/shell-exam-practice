#!/bin/bash

#Скрипт считает сумму от 1 до аргумента

summ=0

if [[ ! -n $1 ]]; then
    echo "$1 is not found"
    break
fi

for (( i=1; i<=$1; i++ ))
do
    summ=$(( $summ+$1 ))
done

echo "Sum equal $summ"
