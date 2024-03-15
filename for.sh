#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 12-Mar-2024
# Description   : The script is a demonstration of for loop

shopt -s nullglob

for number in {1..10}
do
    echo "The number is $number"
done

# The for loop breaks with file names with spaces
for file in $(ls)
do
    echo "The file name is $file"
done

# The glob way of approach works fine even with file names with spaces
for file in *
do
    echo "The file name is $file"
done
