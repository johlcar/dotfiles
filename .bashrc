#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[37m\] \W\[\e[m\] >'

PATH="$HOME/scripts:$PATH"
export PATH
