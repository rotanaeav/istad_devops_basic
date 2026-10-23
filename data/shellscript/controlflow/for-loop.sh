#!/bin/bash

# for loop has 3 styles : 
# C-style for loop
for (( i=1; i<=5; i++ )); do
    echo "C-style for loop : $i"
done

# Bash-style for loop
for i in {1..5}; do
    echo "Bash-style for loop : $i"
done

# with sequence expression
for i in $(seq 1 5); do
    echo "Sequence expression for loop : $i"
done

# example : 
for ((i=1 ; i<=5 ; i++));
do echo "Hello ShellScript ! 🅧 $i"
done