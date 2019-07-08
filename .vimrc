set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-ruby/vim-ruby'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
"Plugin 'shougo/deoplete.nvim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nanotech/jellybeans.vim'
Plugin 'godlygeek/csapprox'
"Plugin 'tpope/vim-ragtag'
"Plugin 'VimClojure'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'calviken/vim-gdscript3'

call vundle#end()            " required

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
imap ZZ <ESC>ZZ
imap SS <ESC>SS
imap ZQ <ESC>ZQ

imap <C-l> <Del>
inoremap <C-c> <ESC>

set dir=/tmp

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
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType tf setlocal ts=2 sts=2 sw=2 expandtab

au BufNewFile,BufRead *.scss set filetype=eruby
au BufNewFile,BufRead *.erb set filetype=eruby
au BufNewFile,BufRead *.gd setlocal ts=2 sts=2 sw=2 expandtab

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

set swapfile
set splitright

set completeopt-=preview

let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_fmt_command = "goimports"

" fzf: https://github.com/junegunn/fzf.vim#usage
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <c-p> :Files<cr>
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

set splitright
set splitbelow

set number relativenumber
set colorcolumn=80

let g:terraform_align=1
"set omnifunc=syntaxcomplete#Complete
let g:deoplete#enable_at_startup = 1

" Disable Ex mode
nnoremap Q <Nop>

let mapleader=" "              
nmap <leader>pf <c-p>
