# Install

```bash
git clone github.com/v3dr4n/dotfiles ~/dotfiles
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
Pow
  - curl get.pow.cx | sh
SourceTree
  - Download and install

## Operations
  - Mute sound on terminal
    Terminal > Preferences > Profiles > Advanced > Audible bell(uncheck)
  - Dock on the left
    System Preferences > Dock > Position on screen > Left
  - Inverse mouse scroll
    Trackpad > *
  - Toggle auto-hide dock
    Cmd + Alt + D
  - Setup terminal color, transparency
    - duplicate Pro and name Pro Vrabac
    - Font: Ubuntu Mono derivative Powerline 14 pt
    - Text: *check* Antialias text
  - Assign a key to each Space
    Keyboard > Shortcuts > MissionControl > Check Switch to Desktop n
  - Powerline fonts
  - clone fonts from https://github.com/powerline/fonts and run ./install.sh

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
