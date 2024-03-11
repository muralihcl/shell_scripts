#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 05-Mar-2024
# Description   : The script is a demonstration of conditionals

# Define the variables

echo -n "Enter the company name: "
read -r int_company

company=$(echo $int_company | tr [:upper:] [:lower:])

echo -n "Enter a random count: "
read -r count

# set -x
# Conditionals
if [[ $company == 'mkoptima' ]]
then
  if [[ $count -le 10 ]]
  then
    echo "Hello, team MKOptima le 10. How are you today?"
  elif [[ $count -gt 10 ]]
  then
    echo "Hello, team MKOptima, gt 10. How are you today?"
  fi
elif [[ $company == 'branch.mkoptima' ]]
then
  echo "Hello, team Branch MKOptima. How are you today?"
else
  echo "I'm sorry, I don't to which company you belong"
fi
