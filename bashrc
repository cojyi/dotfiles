#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
screenfetch

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# enable 256 colors in terminal
export TERM='xterm-256color'

# activate ssh-agent and save keys
# eval $(ssh-agent -s) > /dev/null 2>&1
# ssh-add ~/.ssh/id_rsa_github > /dev/null 2>&1

# load custom bash functions
if [ -f "$HOME/.functions" ] ; then
	. "$HOME/.functions"
fi

# setup directory colors in bash
eval $(dircolors ~/.dircolors/dircolors.256dark)

# export path
# type sudo env PATH="$PATH" tlmgr --gui when trying to install packages
export PATH=/usr/local/texlive/2015/bin/x86_64-linux:$PATH
