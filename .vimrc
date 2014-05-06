set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" " alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
"
" " The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
" " scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)

Bundle 'scrooloose/nerdtree'

"ctrlp
Bundle "kien/ctrlp.vim"


set runtimepath^=~/.vim/bundle/ctrlp.vim

"ag
Bundle 'rking/ag.vim'


"VimRuby
Bundle 'vim-ruby/vim-ruby'

"AutoComplPop
Bundle 'AutoComplPop'

filetype plugin indent on     " required
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.


set ic
syntax enable
set background=dark

nnoremap ,, :FufCoverageFile <cr>
nnoremap \ :Ag<SPACE>
nnoremap K :Ag "<C-R><C-W>"<CR>


"Move lines
"" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
"
" " Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


au FileType ruby setl sw=2 sts=2 et
au FileType python setl ts=8 et sw=4 sts=4

set cursorline
set number
