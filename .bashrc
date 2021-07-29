# .bashrc

PS1='\[\e[1;33m\][ _WIN_ \w ]\[\e[1;34m\] \u \n$ \[\033[0m\]'
export LS_COLORS=':di=01;4;32;7'


export term=xterm-256color

#USER DEFINED ALIAS
alias ls="ls --color=auto"
alias ll="ls -gGh --color=auto"
alias la="ls -agGh --color=auto"
alias grep="grep --color=auto"
alias reload="source ~/.bashrc && source ~/.bash_profile"
alias ..="cd .. && ls"
alias search="find | grep "
alias attach="tmux attach-session -t"

#navigate to local home directory

#ASIC ENVIRONMENT VARIABLES

alias cleanChecksum='find `pwd` -type f | grep checksum > /tmp/files && while read line; do mv -f $line $PWD/checksum; done < /tmp/files'
#grep find text in all files
function recurse(){
	grep -rHn -m 1 $1 *
}
