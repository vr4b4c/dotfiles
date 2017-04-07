set laststatus=2
let g:airline_powerline_fonts=1

if $TERM_PROGRAM == 'iTerm.app'
  colorscheme solarized
  let g:airline_theme='powerlineish'
elseif $TERM_PROGRAM == 'Apple_Terminal'
  colorscheme railscasts
  let g:airline_theme='durant'
endif
