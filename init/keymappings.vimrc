" No More Arrow Keys
nnoremap <Left> :echo "No Left for you!"<CR>
vnoremap <Left> :<C-u>echo "No Left for you!"<CR>
inoremap <Left> <C-o>:echo "No Left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>

" leader mappings
let g:user_emmet_leader_key=','
let mapleader = ","
nnoremap <C-e> :NERDTreeToggle<cr>
nnoremap <silent> <Leader>e :NERDTreeFind<CR>
nnoremap <C-f> :Rg<cr>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>t :tab term<CR>
map <leader>l :nohl<CR>
map <leader>g :G<CR>

nnoremap <leader>w :e ~/Work<CR>
nnoremap <leader>cf :let @*=expand("%")<CR>
