#!/bin/bash

#Скрипт, который принимает на вход названия файла входных данных и файла
# вывода как ключевые аргументы -i и -o соответственно. 
# Скрипт считает количество вхождений слова в файле входных данных в 
# зависимости от третьего аргумента, который это специфицирует. 
# Этот аргумент принимается  как позиционный аргумент. 
# Ответ направляется в файл вывода.

if [[ $# -ne 2 ]]; then
    echo "You not give 2 arg"
    exit 1
fi

while true; do
    read -p "Enter search word: " search_word

    if [[ -n "$search_word" ]]; then
        break
    else
        echo "Please enter a word"
    fi
done

input_file=""
output_file=""

while getopts "i:o" out; do
    case $out in
    i) input_file=$OPTARG;;
    o) output_file=$OPTARG;;
    \?) echo "You died" >&2
        exit 1;
    esac
done 

if [ -z "$input_file" ]; then
    echo "Input file not specified"
    exit 1
fi
if [ -z "$output_file" ]; then
    echo "Output file not specified"
    exit 1
fi

cnt=$(grep -o -i $search_word $input_file | wc -l)

echo "Аргументы скрипта: $cnt" > $output_file
