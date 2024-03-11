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
