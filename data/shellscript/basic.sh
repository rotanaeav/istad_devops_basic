#!/bin/bash
# we can use !/usr/bin/env bash as well ;

#shebang , hashbank
echo -n "What is your name ? : " # -n prevents new line after echo
read name 
echo "Hello, ${name^^} !" # uppercase
echo "Hello, ${name,,} !" # lowercase
echo "Length of your name is ${#name} characters"
echo "Current Date and Time is : $(date)" #when we use $() , the command will run ; 
#user= $(whoami) vs user= $whoami : the no () mean whoami is the variable name and not the command ;

# If nginx-test is not available, show the current date and time : 
nginx-test -v || date

# the second command will only run if the first command succeeds : 
sudo apt update && echo "updateing packages..."
nginx-test -v &> /dev/null && echo "nginx-test is available" # hide output of the first command
echo "Hello KakShellScript !" > msg.txt # redirect output to a file

