"nerdtree
let nerdtreeignore = ['^\.git$','^\.svn$','.*.js.map$','^tags$'] ",'^node_modules$','^vendor$','^dist$'
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" fuzzy file finder
set rtp+=/usr/local/opt/fzf
let g:fzf_action = {
      \ 'ctrl-x': 'vsplit',
      \ 'ctrl-t': 'tabedit'
      \ }
augroup fzf
  autocmd!
  autocmd! filetype fzf
  autocmd  filetype fzf set laststatus=0 noshowmode noruler
    \| autocmd bufleave <buffer> set laststatus=2 showmode ruler
augroup end
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
