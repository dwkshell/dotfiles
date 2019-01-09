" rb's vimrc

set nocompatible

set mouse=a
set noswapfile

set autowrite     " Automatically :write before running commands
set autoread      " Reload files changed outside vim
set ruler         " show the cursor position all the time
set number
set relativenumber
set ignorecase

set t_Co=256
set background=dark
colorscheme hipthem
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

execute pathogen#infect()
syntax on
filetype plugin on
let g:go_disable_autoinstall = 0

" tabs to spaces
set expandtab
set shiftwidth=4
set softtabstop=4

" copy
map <C-c> "*y

set autoindent

" highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  

" scrolling
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" plugins

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>
