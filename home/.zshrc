# homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# antigen
source $HOME/.antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle olivierverdier/zsh-git-prompt

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme, monkey patch use git_super_status
antigen theme dallas
DALLAS_CURRENT_LOCA_="%{$fg[cyan]%}%~\$(git_super_status)%{$reset_color%}\$(parse_git_dirty)"
PROMPT="$DALLAS_CURRENT_TIME_$DALLAS_CURRENT_RUBY_$DALLAS_CURRENT_MACH_$DALLAS_CURRENT_LOCA_ $DALLAS_CURRENT_USER_$DALLAS_PROMPT_CHAR_ "

# Tell antigen that you're done.
antigen apply

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# brew path, mac only
# export PATH=/usr/local/bin:$PATH

# ~/bin
export PATH=$HOME/bin:$PATH

# n
export N_PREFIX=$HOME

# ansible
# [ -f ~/sdks/ansible/hacking/env-setup ] && source ~/sdks/ansible/hacking/env-setup >> /dev/null

export EDITOR=vim

# arch
[ -f ~/.zshrc_arch ] && source ~/.zshrc_arch

# custom
[ -f ~/.zshrc_custom ] && source ~/.zshrc_custom


