#!/bin/bash

a=5, b=7
echo "вывод: $a" # вывод: 3 5
echo "$a" # 5
echo "\$a" # $a

for arg in "$*"
do
	echo $arg # выведется в одну строку
done

for arg in "$@"
do
	echo $arg # выведется каждый в отдельную строку
done

read -t 5 -s -p "Введите секретное значение для varname: " varname
if [[ -n $varname ]]
then
	echo "Ваша секретная переменная varname равна $varname"
else
	echo "Слишком медленно!"
fi

printf "Str: %s \nDec: %d \nFloat: %.3f \n" idk 100 18,132006
# Str: idk 
# Dec: 100 
# Float: 18,132

