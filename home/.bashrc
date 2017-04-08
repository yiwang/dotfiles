#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -FHG'
PS1='[\u@\h \W]\$ '
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

os=`uname`
if [ "$os" = "Darwin" ]; then
  # mac
  [ -f ~/.zshrc_mac ] && source ~/.zshrc_mac
else
  # arch
  [ -f ~/.zshrc_arch ] && source ~/.zshrc_arch
fi

# custom
[ -f ~/.zshrc_custom ] && source ~/.zshrc_custom
