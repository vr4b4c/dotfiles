" vim: ft=vim

" map Crtl+s to save a file
map <C-S> <ESC>:w<CR>
imap <C-S> <ESC>:w<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" reformat file
nnoremap <leader>f mzgg=G`z

" redraw!
nnoremap <leader>r :redraw!<cr>

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Ctags
nnoremap <leader>. :CtrlPTag<cr>
