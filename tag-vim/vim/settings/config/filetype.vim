" vim: ft=vim

au BufRead,BufNewFile *.vue,*mjml set filetype=html
au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile *.exs set filetype=elixir
au BufRead,BufNewFile *.elm setlocal filetype=elm
au BufRead,BufNewFile *.jade setlocal filetype=jade
au BufNewFile,BufReadPost *.jade set filetype=pug
au FileType jade,markdown setlocal textwidth=0

au FileType ruby,elixir setlocal textwidth=120 colorcolumn=+1
au FileType javascript setlocal textwidth=100 colorcolumn=+1
au FileType elm setlocal tabstop=4 shiftwidth=4
