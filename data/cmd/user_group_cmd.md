## NOTE 

Multi-User System : support multiples :
3 Type of users : 
- Root (uuid 0)
- System (uuid 1-999)
- Normal(1000 +)

```bash
cat /etc/passwd # read users info in the system 
tail /etc/passwd # to read only around 10 line last
head /etc/passwd # to read only top 10 
sudo adduser username # utils cmd which required pw, home , addr,...
sudo useradd username # create only user without pw , home or anything ;
sudo useradd --create-home --shell /bin/bash username # create user and create home + apply shell for them ;
sudo useradd -m -s /bin/bash username # shorthand of create-home and shell
sudo passwd username # change pw for username
sudo passwd # change own pw
sudo id username # to check user
sudo su username # switch user without change to home dir
sudo su - username # switch user with home dir (fresh login)

#Delete user: 
sudo deluser # more way then .
sudo deluser --backup-to /home/vagrant --remove-home robin  # some opt of deluser;
sudo userdel #: few opt 

# Practice : 
# 1. create user : deployer, 12345, /bin/bash , required to change pw
sudo useradd -m -s /bin/bash deployer && sudo passwd deployer
echo "deployer:12345" | sudo chpasswd #use this to set defualt pw without input ;
sudo chage -d 0 deployer  # make it expired
sudo usermod -aG groupname username # add user to group
```

