" Ag setup
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Silver searcher with ack
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif
