" NOTE: prettier must be in the $PATH in order for formatter to work
" FIX: reshim current nodejs version: asdf reshim <name> <version>
" POTENTIAL PROBLEM: reshim needs to be run every time you change project

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_ruby = ['rubocop']
let g:neoformat_enabled_ruby = []
" let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_python = []
