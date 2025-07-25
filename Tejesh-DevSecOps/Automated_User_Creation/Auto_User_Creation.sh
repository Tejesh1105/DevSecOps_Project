#!/bin/bash

if [ $# -gt 0 ]; then
    for USER in $@; do
        if [[ $USER =~ ^[a-zA-Z]+$ ]]; then
            echo $USER
            EXISTING_USER=$(cat /etc/passwd | grep -i -w $USER | cut -d ":" -f1)
            if [ "${USER}" = "${EXISTING_USER}" ]; then
                echo "The username $USER entered already exists, please enter different username "
            else
                echo "Congratulation $USER username has been created "
                sudo useradd -m $USER --shell /bin/bash
                SPEC=$(echo ' !@#$%^&*() ' | fold -w1 | shuf | head -1)
                PASSWORD="Company_Name@${RANDOM}${SPEC}"
                echo "$USER:$PASSWORD" | sudo chpasswd
                echo "The temporary password for the $USER is ${PASSWORD}"
                passwd -e $USER
            fi
        else
            echo "The user must contain Alphabets"
        fi
    done
else
    echo "Please enter the valid parameters"
fi
