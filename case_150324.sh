#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 11-Mar-2024
# Description   : The script is a demonstration of case over nested if elif else logic

# Enable debug
 #set -x

# Define variables
os=$(uname)

case $os in
  'SunOS')
      echo "[Case] You are working on a Solaris oprating system"
      ;;
  'HP-UX')
      echo "[Case] You are working on a HP-UX oprating system"
      ;;
  'Linux')
      echo "[Case] You are working on a Linux oprating system"
      ;;
  '*')
      echo "[Case] I don't know on which operating system you are working on"
      ;;
esac

number_of_files_in_directory=$(ls -1 | wc -l)

case $number_of_files_in_directory in
  0)
      echo "[Case] There are no files in $PWD directory"
      ;;
  1)
      echo "[Case] You have 1 file in $PWD directory"
      ;;
  2)
      echo "[Case] You have 2 files in $PWD directory"
      ;;
  3)
      echo "[Case] You have 3 files in $PWD directory"
      ;;
  4)
      echo "[Case] You have 4 files in $PWD directory"
      ;;
  5)
      echo "[Case] You have 5 files in $PWD directory"
      ;;
  6)
      echo "[Case] You have 6 files in $PWD directory"
      ;;
  7)
      echo "[Case] You have 7 files in $PWD directory"
      ;;
  8)
      echo "[Case] You have 8 files in $PWD directory"
      ;;
  9)
      echo "[Case] You have 9 files in $PWD directory"
      ;;
  *)
      echo "[Case] There are more than 9 files in this directory"
      ;;
esac

