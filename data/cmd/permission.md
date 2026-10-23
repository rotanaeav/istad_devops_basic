## PERMISSION
### To list : 
``` bash 
ll -ltr
ll
```
### Change permission of file or dir : 
``` bash
sudo chmod 700 ./shellscript/demo.sh  # 4 : read , write : 3 , execute : 1 ; user|group|other
sudo chmod u+rwx filename # normal apply to user
sudo chmod g+rwx filename # for group
sudo chmod  o+rwx filename # for other 
```

### Link : (Sync and like Shortcut)
``` bash
ln --symbolic path_real_file path_link_store 
ln --symbolic ~/workspace/shellscript/demo.sh ~/workspace/demo-link/config #example config file is link to demo.sh
```
### Ownership 
``` bash
sudo chown username:groupname fileName # user:group 
sudo chown username: file # shorthand for both user and group
sudo chown robin test.txt # only user
sudo chown :groupname filename # for only group
sudo chgrp groupname filename # for only group
sudo chown -r # for directory need to use recursive for apply whole folder
```
### Sudo
#### password config : 
```bash
sudo visudo # cmd to edit or config user and group password
# username for all terminal, run as all user,as all group, without password :
username ALL=(ALL:ALL) NOPASSED:ALL​ # write this into the end of the visudo to make user not require passwd
username ALL=(root) NOPASSWD:/bin/cp # only can run cp (copy) as root user without password
```


