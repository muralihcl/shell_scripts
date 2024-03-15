#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 12-Mar-2024
# Description   : The script is a demonstration of while loop

# While loop is usually used when number of iterators are not clearly known

count=0
while true
do
    count=$((count+1))
    if [[ $count -eq 10 ]]
    then
        continue
    fi
    if [[ $count -eq 20 ]]
    then
        break
    fi
    echo "Number is $count"
done
