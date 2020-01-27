# Install

```bash
# Run script from https://brew.sh
brew install thoughtbot/formulae/rcm
brew install git
# transfer .ssh config and keys
git clone git@github.com:vr4b4c/dotfiles.git ~/dotfiles
RCRC=$HOME/dotfiles/rcrc rcup
brew bundle
```
## TODO
 - Heroku Toolbelt

## Software
Postico
  - Download and install
Spectacle
SourceTree
asdf
  - https://github.com/asdf-vm/asdf#setup
Croatian-US-mac keyboard
  - https://github.com/kost/Croatian-US-mac#installation
rbenv default gems
  - https://github.com/rbenv/rbenv-default-gems#installation

## Operations
  - Mute sound on terminal
    Terminal > Preferences > Profiles > Advanced > Uncheck Audible bell & Visual Bell
  - Dock on the left
    System Preferences > Dock > Position on screen > Left
  - Inverse mouse scroll
    System Preferences > Trackpad > Scroll & Zoom > uncheck Scroll Direction: Natural
  - Toggle auto-hide dock
    Cmd + Alt + D
  - Powerline fonts
    clone fonts from https://github.com/powerline/fonts
    run ./install.sh
  - Setup terminal color, transparency
    duplicate Pro and name Pro Vrabac
    change font > Ubuntu Mono derivative Powerline 14 pt
    check Text > Antialias text
  - Keyboard speed
    System Preferences > Keyboard > Key repeat > Slide to Fast
    System Preferences > Keyboard > Delay until repeat > Slide to Short

## Backup
  - Export Brew bundle
```
brew bundle dump --force
```

After:
  - export Postico connections
  - create Postgres user
```
createuser -s postgres
```
  - install https://github.com/rbenv/rbenv-default-gems
  - add valut token
```bash
echo "export VAULT_AUTH_TOKEN=secret-token" >> $HOME/.bash_profile.local
```
