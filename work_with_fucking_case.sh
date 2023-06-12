#!/bin/bash

if [ ! -n $1 ] && [ ! -f $2 ]; then
    "Args not found"
    exit 1
fi

case $1 in 
    4) if [ $1 -eq 4 ]; then 
        echo "Хорошо"
    fi
    ;; 
    5) if [ $2 -eq 5 ]; then 
        echo "Возможно"
    fi
    ;;
    *) echo "нет"
    exit 0
    ;;
esac

head -n "$1" "$2"

