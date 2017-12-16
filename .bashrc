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

alias run='./a.out'

alias mk="cd ~/;ls"
alias md="cd ~/Documents; ls"
alias ml="cd ~/Documents/LaTeX; ls"
alias mcc="cd ~/Documents/C; ls"
alias mcp="cd ~/Documents/C++; ls"
alias my="cd ~/Documents/Python; ls"
alias mw="cd ~/Downloads; ls"
alias mm="cd ~/Music"
alias mp="cd ~/Pictures; ls"
alias ms="cd ~/School; ls"
alias mg="cd ~/School/German; ls"
