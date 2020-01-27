call neomake#configure#automake('w')

let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']
let g:neomake_ruby_rubocop_maker = {
    \ 'args': ['-D', '--force-exclusion']
    \ }

let g:neomake_elixir_enabled_makers = ['mix', 'credo']

let s:neomake_elixir_credo_config_typemap = {
    \ 'F': 'W',
    \ 'C': 'E',
    \ 'D': 'I',
    \ 'R': 'I'}
