#!/bin/bash
# #! is not a comment , it is called shebang or hashbang ;

# we use || to run the second command if the first command fails ;
# which nginx || {
#     echo "Installing nginx..."
#     sudo apt update && sudo apt upgrade -y
#     sudo apt install -y nginx
# }

echo "File name is : $0" # it will print the name of the script file ;
echo "Status code of the last command is : $?" # it will print the status code of the last command ;
echo "Current user is : $USER" # it will print the current user ;
echo "Current directory is : $PWD" # it will print the current directory ;
echo "Number of arguments is : $#"
echo "All arguments are : $@"

docker -v &> /dev/null
echo $? 
if [[ $? -eq '0' ]]; then
    echo "Docker is installed 🍏"
else
    echo "Docker is not installed 🍎"
fi

