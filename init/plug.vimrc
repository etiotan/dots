call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'etiotan/very-plain'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
" Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yggdroot/indentline'
Plug 'vim-test/vim-test'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
