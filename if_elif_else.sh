#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 11-Mar-2024
# Description   : The script is a demonstration of nested if elif else logic

# Enable debug
set -x

# Define variables
os=$(uname)

if [[ $os == 'SunOS' ]]
then
  echo "You are working on a Solaris oprating system"
elif [[ $os == 'HP-UX' ]]
then
  echo "You are working on HP-UX operating system"
elif [[ $os == 'Linux' ]]
then
  echo "You are working on Linux operating system"
else
  echo "I don't know on which operating system you are working on"
fi