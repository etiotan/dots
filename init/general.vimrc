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
set splitbelow
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
let g:gitgutter_preview_win_floating = 1
colorscheme monochrome
highlight clear SignColumn
highlight  Pmenu ctermbg=black ctermfg=white
" Airline
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

