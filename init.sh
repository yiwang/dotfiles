git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
git clone https://github.com/joeyh/myrepos.git $HOME/.homesick/repos/myrepos
git clone git@github.com:yiwang/dotfiles.git $HOME/.homesick/repos/dotfiles
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick link
cd
mr u
