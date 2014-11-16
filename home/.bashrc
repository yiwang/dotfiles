#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# arch
[ -f ~/.zshrc_arch ] && source ~/.zshrc_arch

# custom
[ -f ~/.bashrc_custom ] && source ~/.bashrc_custom

