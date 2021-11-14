" No More Arrow Keys
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
inoremap <Left> <C-o>:echo "No Left for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>
nnoremap <Left> :echo "No Left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
vnoremap <Left> :<C-u>echo "No Left for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>

" leader mappings
let g:user_emmet_leader_key=','
let mapleader = ","
map <leader>g :G<CR>
map <leader>l :nohl<CR>
nnoremap <C-e> :NERDTreeToggle<cr>
nnoremap <C-f> :Rg<cr>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>t :tab term<CR>
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <silent> <Leader>e :NERDTreeFind<CR>

nnoremap <leader>cf :let @*=expand("%")<CR>
nnoremap <leader>w :e ~/Work<CR>

nnoremap <leader>rf :TestFile<CR>
nnoremap <leader>rs :TestSuite<CR>
nnoremap <leader>rr :TestLast<CR>
nnoremap <leader>rt :TestNearest<CR>

nnoremap <leader>rc :!rubocop % -A<CR>
let test#strategy = "vimterminal"
let test#vim#term_position = "vert"
