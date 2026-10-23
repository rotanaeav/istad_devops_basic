#!/bin/bash

# declare an array 
declare -a my_array
my_array[0]="apple"
# echo ${my_array[0]} # apple

# compound assignment array
all_users=("james" "john" "jane" "jack" "robiza")
all_users+=("koko") # add an element to the array

echo "First user is : ${all_users[0]}"

echo "Array length is : ${#all_users[@]}" # $(#[@]) means the length of the array ;
for user in "${all_users[@]}"; do # $([@]) means all elements of the array ;
    echo "User is 👉 $user"
done


