# Install

```bash
brew install rcup
git clone git@github.com:vr4b4c/dotfiles.git ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
```
## TODO
 - Heroku Toolbelt

## Software
Homebrew
  - Run script from https://brew.sh
Postico
  - Download and install
Slack
  - Download and install
Spectacle
  - Download and install
SourceTree
  - Download and install
asdf
  - https://github.com/asdf-vm/asdf#setup

## Operations
  - Mute sound on terminal
    Terminal > Preferences > Profiles > Advanced > Audible bell(uncheck)
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
