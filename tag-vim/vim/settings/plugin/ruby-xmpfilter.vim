" let g:xmpfilter_cmd = "seeing_is_believing"
let g:xmpfilter_cmd = "xmpfilter --no-warnings"

autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-run)

" autocmd FileType ruby nmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
" autocmd FileType ruby xmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
" autocmd FileType ruby imap <buffer> <D-m> <Plug>(seeing_is_believing-mark)

" autocmd FileType ruby nmap <buffer> <D-c> <Plug>(seeing_is_believing-clean)
" autocmd FileType ruby xmap <buffer> <D-c> <Plug>(seeing_is_believing-clean)
" autocmd FileType ruby imap <buffer> <D-c> <Plug>(seeing_is_believing-clean)

" " xmpfilter compatible
" autocmd FileType ruby nmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
" autocmd FileType ruby xmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
" autocmd FileType ruby imap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)

" " auto insert mark at appropriate spot.
" autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing_is_believing-run)
" autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
" autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run)
