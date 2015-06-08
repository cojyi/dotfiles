# README 

## Setup git repo

1. cd ~/dotfiles
2. git init
3. git add . 
4. git commit -m "edited files"
5. git remote add origin git@github.com:mygithubusername/dotfiles.git (for ssh push)
6. git push origin master

## Setup vim Plugins 

1. cd ~/dotfiles 
2. mkdir -p ~/vim/bundle (Skip step if bundle directory is already created)
3. git submodule add "git hub URL" vim/bundle/"plugin name"
4. git add .
5. git commit -m "Install plugin as submodule"
6. git push origin master
7. run the install.sh script

## Updating git repo

After making changes to file(s), 

1. cd ~/dotfiles
2. git add . 
3. git commit -m "Changed"
4. git push origin master

## Cloning to another machine

1. git clone git://github.com/<username>/dotfiles.git
2. cd ~/dotfiles
3. chmod +x install.sh
4. ./install.sh

## Updating a local git repo

Updated repo from original workstation but want to apply updates to another workstation

1. git pull origin master

## Setup github ssh keys

1. [Click here](https://help.github.com/articles/generating-ssh-keys/) for instructions

## Setup Cygwin ssh server

1. Install following packages 
	- openssh
	- cygrunsrv

2. ssh-host-config
	- Should privilege separation be used? yes
	- New local account 'sshd'? yes
	- install sshd? yes
	- Enter value of daemon []: binmode ntsec
	- Create different name? no
	- Create new priveleged user account? yes
	- Enter password
	- Re-enter password

3. chmod 600 /etc/ssh*key
4. chmod 600 /var/empty
5. Configure the file /etc/sshd_config
	- RSA Authentication
	- PubkeyAuthentication
	- PasswordAuthentication
6. Allow sshd through Windows Firewall
	- go into control panel and allow sshd from Cygwin64/usr/sbin
7. Start sshd server (cygrunsrv -S sshd)
8. Stop sshd server (cygrunsrv -E sshd)

