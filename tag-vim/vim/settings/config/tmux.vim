" vim: ft=vim

" resize panes in Tmux
" fix: http://superuser.com/questions/549930/cant-resize-vim-splits-inside-tmux
if &term =~ '^screen'
  set ttymouse=xterm2
endif
