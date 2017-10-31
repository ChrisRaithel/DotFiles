#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=/home/chris/Documents/MyConf --work-tree=/home/chris/'

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

for (( i=1; i<=$LINES; i++ )); do echo; done; clear
