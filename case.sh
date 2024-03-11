#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 11-Mar-2024
# Description   : The script is a demonstration of case over nested if elif else logic

# Enable debug
set -x

# Define variables
os=$(uname)

case $os in
  'SunOS')
      echo "You are working on a Solaris oprating system"
      ;;
  'HP-UX')
      echo "You are working on a HP-UX oprating system"
      ;;
  'Linux')
      echo "You are working on a Linux oprating system"
      ;;
  '*')
      echo "I don't know on which operating system you are working on"
      ;;
esac

number_of_files_in_directory=$(ls -1 | wc -l)

case $number_of_files_in_directory in
  0)
      echo "There are no files in $PWD directory"
      ;;
  1)
      echo "You have 1 file in $PWD directory"
      ;;
  2)
      echo "You have 2 files in $PWD directory"
      ;;
  3)
      echo "You have 3 files in $PWD directory"
      ;;
  4)
      echo "You have 4 files in $PWD directory"
      ;;
  5)
      echo "You have 5 files in $PWD directory"
      ;;
  6)
      echo "You have 6 files in $PWD directory"
      ;;
  7)
      echo "You have 7 files in $PWD directory"
      ;;
  8)
      echo "You have 8 files in $PWD directory"
      ;;
  9)
      echo "You have 9 files in $PWD directory"
      ;;
  '*')
      echo "There are more than 9 files in this directory"
      ;;
esac

echo "There are $number_of_files_in_directory in $PWD directory"
