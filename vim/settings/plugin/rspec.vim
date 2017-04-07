map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = 'Dispatch bundle exec rspec {spec}'
" let g:rspec_command = 'Dispatch bundle exec foreman run rspec {spec}'
