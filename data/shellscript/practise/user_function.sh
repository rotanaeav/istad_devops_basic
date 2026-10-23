#!/bin/bash

create-user(){
    sudo useradd -m -s /bin/bash ${user} && echo ${user}:qwer | sudo chpasswd
#     sudo chage -d 0 $user
}