#!/bin/bash

all_users=("kaka" "john" "jane" "jack" "koko")
echo all_users;

set -x  # enable debugging mode to print each command before executing it
# for user in "${all_users[@]}"; do
#     sudo useradd -m -s /bin/bash ${user} && echo ${user}:qwer | sudo chpasswd
#     sudo chage -d 0 $user
# done
#Delete users
for user in "${all_users[@]}"; do
sudo deluser --remove-home ${user} && echo "User ${user} deleted successfully"
done
set +x  # disable debugging mode

