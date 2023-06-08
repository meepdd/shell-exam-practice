#!/bin/bash

# Скрипт получает аргумент из командной строки 
# и проверяет вхождение в интервал:
# - 0-9 - 1
# - 10-19 - 2
# - 20-30 - 3
# - остальное - -1

if [[ ! -n $1 ]]; then
    echo "Arg $1 is not found"
    break
fi

if [[ $1 -gt 0 ]] && [[ $1 -lt 9 ]]; then
    echo "$1 equal 1"
elif [[ $1 -ge 10 ]] && [[ $1 -lt 19 ]]; then
    echo "$1 equal 2"
elif [[ $1 -ge 20 ]] && [[ $1 -le 30 ]]; then 
    echo "$1 equal 3"
else 
    echo "$1 equal -1"
fi 
