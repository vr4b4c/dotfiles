# Install

```bash
git clone github.com/v3dr4n/dotfiles ~/dotfiles
env RCRC=$HOME/dotfiles/host-Vrabac/rcrc rcup
```

Dependencies:
 - rbenv
 - vim
 - git
 - tmux

```bash
brew install bash-completion
brew install rmtrash
```

After:

```bash
echo "export VAULT_AUTH_TOKEN=secret-token" >> $HOME/.bash_profile.local
```
