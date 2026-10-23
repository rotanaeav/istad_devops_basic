#!/bin/bash
#inlude the file to load it 
if [ -f "function.sh" ];then
    source function.sh
else
    echo "File doesn't exist !!!"
    exit 1
fi
echo "This is a $0 for our project"
#calling function from other : 
welcome_user ${USER} 25
