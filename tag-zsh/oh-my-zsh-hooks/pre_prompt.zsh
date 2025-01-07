# Configure instant prompt + direnv
# https://github.com/romkatv/powerlevel10k/blob/master/README.md#how-do-i-initialize-direnv-when-using-instant-prompt
(( ${+commands[direnv]} )) && emulate zsh -c "$(direnv export zsh)"
