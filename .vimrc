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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/matchit'
Plugin 'junegunn/vim-easy-align'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()            " required

nnoremap \ :Ag<SPACE>

"Move lines
"" Normal mode
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
" Visual mode
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
" Visual mode move horizontally
vnoremap ˙ xhp
vnoremap ¬ xlP
vnoremap < <gv
vnoremap > >gv

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Quick Save
nnoremap SS :w<CR>

let g:ctrlp_working_path_mode = 'rw'

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
au FileType eruby setl sw=2 sts=2 et
au FileType python setl ts=8 et sw=4 sts=4

set hlsearch
hi Search cterm=NONE ctermfg=white ctermbg=blue

" make mvim clipboard work in tmux
set clipboard=unnamed
