#!/bin/bash

function greeting(){
    echo "Hello KakShellScript !"
    echo "Current user is : $USER"
}
# shorthand
welcome(){
    username="$USER"
    echo "Welcome, ❤️ ${username^^}❤️ !"
}
# parameter passing
welcome_user(){
    username="$1"
    local age="$2" # we use local to make the var scope to the function only ;
    echo -e "\n"
    echo "Welcome, ❤️ ${username^^}❤️ !"
    echo "Your age is : $age"
}
# greeting
# welcome
# welcome_user ${USER} 25