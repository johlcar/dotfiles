#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[37m\] \W\[\e[m\] >'

PATH="$HOME/scripts:$PATH"
export PATH

# Append Anaconda so that it doesn't override system Python
export PATH="$PATH:/home/joslcar/anaconda3/bin"

# Pywal remember theme
#(cat ~/.cache/wal/sequences &)
