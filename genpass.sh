#!/bin/bash
###########################################
## Deps: 
##
## Be sure to check the license file.
##
## Script to generate a password
###########################################

if [ $# -eq 0 ]
  then
    echo "No argument supplied"
    echo "Enter a number for the length of password"
    echo "to be generated. i.e. 32 for 32 digit length"
    exit 1
fi


tr -dc 'a-zA-Z0-9~!@#$%^&*_()+}{?></";.,[]=-' < /dev/urandom | fold -w "$1" | head -n 1
