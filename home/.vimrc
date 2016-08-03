call plug#begin('~/.vim/plugged')
" let g:solarized_termcolors=256
" colorschemes
" Plug 'junegunn/seoul256.vim'
" Plug 'fugalh/desert.vim'
Plug 'altercation/vim-colors-solarized'

" Make sure you use single quotes
"
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'chase/vim-ansible-yaml'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'gkz/vim-ls'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-jdaddy'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'digitaltoad/vim-jade'
Plug 'rking/ag.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'lambdatoast/elm.vim'
Plug 'venantius/vim-cljfmt'
Plug 'shime/vim-livedown'
Plug 'autowitch/hive.vim'
Plug 'motus/pig.vim'
Plug 'fatih/vim-go'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'cespare/vim-toml'

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

" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
set hlsearch
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>

" redefine leader
let mapleader = ","

" kien/rainbow_parentheses.vim always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ctrlp
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" line number
set nu

" tidy html
vmap ,x :!tidy -q -i --show-errors 0<CR>
command Thtml :%!tidy -q -i --show-errors 0
command Txml  :%!tidy -q -i --show-errors 0 -xml

" gui
if has("gui_running")
  set guioptions-=T
  " set guioptions-=m
endif

" Elm
nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>

" boot
set backup
set swapfile
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp

" for .hql files
au BufNewFile,BufRead *.hql set filetype=hive expandtab
" for .q files
au BufNewFile,BufRead *.q set filetype=hive expandtab

" rust
let g:rustfmt_autosave = 1
set hidden
let g:racer_cmd = $HOME . "/.cargo/bin/racer"
let $RUST_SRC_PATH = $HOME . "/repos/lab/rust/src/"

