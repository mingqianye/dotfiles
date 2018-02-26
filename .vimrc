set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rking/ag.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlp.vim'
Plugin 'motus/pig.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/matchit'
Plugin 'junegunn/vim-easy-align'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nanotech/jellybeans.vim'
Plugin 'godlygeek/csapprox'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'VimClojure'
Plugin 'fatih/vim-go'
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

set dir=/tmp

set runtimepath^=~/.vim/bundle/ctrlp.vim
set cursorline
set number
set ic
set background=dark
set backspace=2
set hlsearch
hi Search cterm=NONE ctermfg=white ctermbg=blue

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

au FileType sh setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et
au FileType eruby setl sw=2 sts=2 et
au FileType python setl ts=8 et sw=4 sts=4
au FileType yaml setl ts=8 et sw=4 sts=4

au BufNewFile,BufRead *.scss set filetype=eruby
au BufNewFile,BufRead *.erb set filetype=eruby

map <Leader>n <plug>NERDTreeTabsToggle<CR>

set hlsearch
hi Search cterm=NONE ctermfg=white ctermbg=blue

set t_Co=256
let g:jellybeans_use_lowcolor_black = 0
colorscheme jellybeans
au VimEnter * IndentGuidesEnable
" let g:nerdtree_tabs_open_on_console_startup=1

" make mvim clipboard work in tmux
"set clipboard=unnamed

let g:ctrlp_working_path_mode = '0'
set swapfile
set splitright

set completeopt-=preview

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
