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

alias ranger='ranger --choosedir=/tmp/rangerdir; LASTDIR=`cat /tmp/rangerdir`; cd "$LASTDIR"'
alias r=ranger

alias ipython='ipython --TerminalInteractiveShell.highlighting_style="monokai";'

#Prompt colors and stuff
Red='\033[01;31m\]'
Green='\033[01;32m\]'
Blue='\033[01;34m\]'
Purple='\033[01;35m\]'
Cyan='\033[01;36m\]'
Yellow='\033[01;33m\]'
White='\033[01;37m\]'
Reset='\[\033[0m\]'

#Standard & boring PS1
bracket1="${Green}["
username="${Cyan}\u"
at="${Purple}@"
host="${Yellow}\h"
bracket2="${Green}]"
finale="${Reset}\$ "

#PS1="${bracket1}${username}${at}${host}${bracket2}${finale}"

#Cool PS1
username="${Cyan}\u"
path="${Reset}\w"
bolt="${Yellow}⚡"

PS1="${username} ${path}${Reset}\n└─${bolt}${Reset} "
#─│└
