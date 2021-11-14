filetype indent on
filetype on
filetype plugin indent on
filetype plugin on
set clipboard=unnamed
set cmdheight=2
set cursorline
set directory^=$HOME/.vim/tmp//
set hidden
set hlsearch
set nobackup
set noswapfile
set nowritebackup
set number
set relativenumber number
set shortmess+=c
set signcolumn=yes
set splitbelow
set updatetime=300
set wrap linebreak
set so=999
set tw=80
set showcmd
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

