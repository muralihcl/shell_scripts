#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 12-Mar-2024
# Description   : The script is a demonstration of while loop

# While loop is usually used when number of iterators are not clearly known

# Infinite loop
count=1
while true
do
    echo "Print $count"
    count=$((count+1))
done
