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
