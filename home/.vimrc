call plug#begin('~/.vim/plugged')

" colorschemes
" Plug 'junegunn/seoul256.vim'
" Plug 'fugalh/desert.vim'
Plug 'altercation/vim-colors-solarized'

" Make sure you use single quotes
"
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'chase/vim-ansible-yaml'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'gkz/vim-ls'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'dgrnbrg/vim-redl', { 'for': 'clojure' }

" Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

call plug#end()

" basic format
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
colorscheme solarized
set background=dark

" redefine leader
let mapleader = ","

" kien/rainbow_parentheses.vim always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
