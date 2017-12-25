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

# I copied this but you can't prove that
function printcolors {
	color=16;

	while [ $color -lt 245 ]; do
		echo -e "$color: \\033[38;5;${color}mhello\\033[48;5;${color}mworld\\033[0m"
		((color++));
	done
}

# Recolored PS1, hopefully looks nice.
#lets divvy this up a bit
PSclear="\[\033[0m\]"
PSbracket="\[\033[38;5;228m\]"
PSat="\[\033[38;5;227m\]"
PSuser="\[\033[38;5;230m\]"
PSdollar="\[\033[38;5;231m\]"

PS1="${PSbracket}[${PSuser}\u${PSbracket}@${PSuser}\h ${PSuser}\W${PSbracket}]${PSuser}\$ ${PSclear}"

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
