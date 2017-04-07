# vim: set ft=sh:

# bashrc
[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

# bash_aliases
[[ -f $HOME/.aliases ]] && source $HOME/.aliases

# local bin
[[ -d $HOME/bin ]] && export PATH="$HOME/bin:$PATH"

# Prompt
export PS1='[\u - \W]\$ '

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

# Vim
stty -ixon

# Vault
export VAULT_ADDR=https://vault.infinum.co:8200
export VAULT_AUTH_METHOD=github

# Bundler
export EDITOR=vim
export BUNDLER_EDITOR=vim

# SSH agent
eval `ssh-agent -s` > /dev/null
for identity in $HOME/.ssh/*_rsa; do
  ssh-add $identity > /dev/null 2>&1
done

# Rcup
[[ -f "$HOME/.rcrc" ]] && export RCRC=$HOME/.rcrc

# Local overrides
[[ -f ~/.bash_profile.local ]] && source ~/.bash_profile.local
