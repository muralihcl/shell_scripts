#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 14-Mar-2024
# Description   : The script is a demonstration of targeted backup

# This is a live script that creates the backup of the scripts folder
# The backup file name is computed using the date stamp
# If the backup file name is already existing, then the backup will be skipped

# Variable declaration
backup_dir=${HOME}/backup
backup_file="${backup_dir}/backup_$(date +"%d%m%Y").tar"

if [[ ! -d ${backup_dir} ]]
then
    echo "The ${backup_dir} does not exist on this system. Creating it..."
    mkdir ${backup_dir}
else
    echo "The ${backup_dir} exists on this system. Moving forward..."
fi

if [[ -f ${backup_file} ]]
then
    echo "Today's backup has already been taken, no need to run again. Exiting the program"
    echo "If you want to run another backup for today, delete the ${backup_file} and run again"
    exit 8
else
    echo "No previous backups have been taken, moving forward with backup task"
fi

echo "Initiating backup of current script directory to ${backup_file} ..."

tar --exclude '.git' -cf ${backup_file} * > /dev/null 2>&1

if [[ ${?} -eq 0 ]]
then
    echo "The backup task is successfully completed"
    echo "Backup file is ${backup_file}"
    exit 0
else
    echo "There is an issue backing up the scripts to ${backup_file}"
    echo "Please check the status of ${backup_file} manually and re-run if needed"
    exit 1
fi
