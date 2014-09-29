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

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme dallas

# Tell antigen that you're done.
antigen apply

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# brew
export PATH=/usr/local/bin:$PATH

# ansible
source ~/sdks/ansible/hacking/env-setup >> /dev/null

