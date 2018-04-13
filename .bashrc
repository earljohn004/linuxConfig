# .bashrc

PS1='\[\e[1;33m\][ _WIN_ \w ]\[\e[1;34m\] \u \n$ \[\033[0m\]'
export LS_COLORS=':di=01;4;32;7'


#set term=xterm-256color

#USER DEFINED ALIAS
alias ls="ls --color=auto"
alias ll="ls -gGh --color=auto"
alias la="ls -agGh --color=auto"
alias grep="grep --color=auto"
alias sim2="ssh -Y abaquitae@10.191.23.26"
alias sim4="ssh -Y abaquitae@10.191.23.23"
alias sim3="ssh -Y abaquitae@10.191.23.24"
alias sim1="ssh -Y abaquitae@10.191.23.25"
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
