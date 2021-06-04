"settings
set relativenumber number
set cursorline
set clipboard=unnamed
set number
set wrap linebreak
set hlsearch
set cmdheight=2
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
" no back ups or swaps
set nobackup
set noswapfile
set nowritebackup
set directory^=$HOME/.vim/tmp//
filetype plugin indent on
filetype plugin on
filetype on
filetype indent on
syntax on
" Themes
let g:airline_theme='papercolor'
let g:gitgutter_preview_win_floating = 1
colorscheme monochrome
highlight clear SignColumn
highlight  Pmenu ctermbg=black ctermfg=white
