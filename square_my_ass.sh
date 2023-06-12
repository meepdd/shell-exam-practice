#!/bin/bash

for i in $@
do
  if [ $((i%2)) -eq 0 ]; then
    square=$((i*i))
    echo $square
  fi
done
