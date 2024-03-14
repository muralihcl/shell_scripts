#!/bin/bash

# Author        : Muralidhara Kakkunje
# Version       : 1.0
# Date          : 14-Mar-2024
# Description   : The script is used to manage user administration on Linux

# Declare functions

function check_user() {
    user_name=$1
    if $(id -u ${user_name} 2> /dev/null | wc -l) -eq 1
    then
        return 1
    else
        return 0
    fi
}

function create_user() {
    user_name=$1
    if [[ ! -z $2 ]]
    then
        comment=$2
    else
        comment="User $user_name"
    fi
    if [[ ! -z $3 ]]
    then
        user_shell=$3
    else
        user_shell=/bin/bash
    fi
    echo "Creating the user with provided details"
    useradd -c "$comment" -s $user_shell -m ${user_name}
    if $? -ne 0
    then
        echo "Successfully created the user $user_name"
        return 0
    else
        echo "There is an issue creating the user"
        return 1
    fi
}

function modify_user() {
    user_name=$1
    if [[ ! -z $2 ]]
    then
        comment=$2
    else
        comment="User $user_name"
    fi
    if [[ ! -z $3 ]]
    then
        user_shell=$3
    else
        user_shell=/bin/bash
    fi
    echo "Modifying the user with provided details"
    usermod -c "$comment" -s $user_shell ${user_name}
    if $? -ne 0
    then
        echo "Successfully created the user $user_name"
        return 0
    else
        echo "There is an issue creating the user"
        return 1
    fi
}

# Read the operation
echo "1. Create a new user"
echo "2. Modify existing user"
echo "3. Delete an existing user"
echo "4. Exit"

read option

# Read user name
echo -n "Enter the name of the user: "
read user_name

case $option in
    1)
        # Check the user if it exists
        check_user $user_name

        # Only if the use does not exist, proceed with creation
        if $? -eq 0
        then
            echo "The user $user_name does not exist, can be created"
            # Read the comment
            echo -n "Enter the comment: "
            read comment
            # Read the default shell
            echo -n "Enter the default shell: "
            read user_shell
            create_user $user_name $comment $user_shell
            if $? -eq 0
            then
                echo "The user $user_name has been successfully created"
            else
                echo "There is an issue creating the user $user_name"
            fi
        else
            echo "The user $user_name already exists on this system"
        fi
        ;;
    2)
        check_user $user_name
        if $? -ne 0
        then
            echo "The user $user_name exists, can be modified"
            echo -n "Enter the comment: "
            read comment
            echo -n "Enter the default shell: "
            read user_shell
            modify_user $user_name $comment $user_shell
            if $? -eq 0
            then
                echo "The user $user_name has been successfully modified"
            else
                echo "There is an issue modifying the user $user_name"
            fi
        else
            echo "The user $user_name does not exist, hence cannot be modified"
        fi
        ;;
    3)
        check_user $user_name
        if $? -ne 0
        then
            echo "The user $user_name exists, can be deleted"
            userdel $user_name -r
            if $? -eq 0
            then
                echo "The user $user_name has been successfully deleted"
            else
                echo "There is an issue deleting the user $user_name"
            fi
        else
            echo "The user $user_name does not exist, hence cannot be deleted"
        fi
        ;;
    4)
        echo "Exiting..."
        exit 2
        ;;
    *)
        echo "Unknown option. Exiting..."
        exit 3
        ;;
esac
