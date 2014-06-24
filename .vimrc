set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'AutoComplPop'
Plugin 'ctrlp.vim'
Plugin 'motus/pig.vim'
call vundle#end()            " required

nnoremap \ :Ag<SPACE>
nnoremap K :Ag "<C-R><C-W>"<CR>

"Move lines
"" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" Visual mode move horizontally
vnoremap <C-h> xhp
vnoremap <C-l> xlP
vnoremap < <gv
vnoremap > >gv


" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

set runtimepath^=~/.vim/bundle/ctrlp.vim
set cursorline
set number
set ic
set background=dark
set backspace=2
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

au FileType ruby setl sw=2 sts=2 et
au FileType python setl ts=8 et sw=4 sts=4

set hlsearch
hi Search cterm=NONE ctermfg=white ctermbg=blue
