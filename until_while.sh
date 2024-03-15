#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 12-Mar-2024
# Description   : The script is a demonstration of while and until loop

count=0

while [[ $count -lt 15 ]]
do
  count=$((count+1))
  echo "Printing with while $count"
done

echo "***************"

count=0
until [[ $count -ge 15 ]]
do
  count=$((count+1))
  echo "Printing with until $count"
done
