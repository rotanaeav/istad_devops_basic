#!/bin/bash

read -p "Enter your age : " age
echo -e "\nYour age is : $age"

# if-else statement 
# -eq = equal
# -ne = not equal
# -gt = greater than
# -lt = less than
# -ge = greater than or equal
# -le = less than or equal
if [[ $age -ge 18 ]]; then
    echo "You are eligible to vote. 🍏"
else
    echo "You are not eligible to vote. 🍎"
fi

# C -style if-else statement
if (( age >= 18 )); then
    echo "You are eligible to vote. 🍏"
else
    echo "You are not eligible to vote. 🍎"
fi

#else if 

if [[ $age -ge 18 && $age -lt 60 ]]; then
    echo "You are eligible to vote. 🍏"
elif [[ $age -ge 60 ]]; then
    echo "You are a senior citizen. 🍏"
else
    echo "You are not eligible to vote. 🍎"
fi

