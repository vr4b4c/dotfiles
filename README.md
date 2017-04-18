# Install

```bash
git clone github.com/v3dr4n/dotfiles ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
```
## TODO
 - Heroku Toolbelt
 - setup up rbenv#default-gems(bundler, powder, pry) and to link with dotfiles

## Brew packages
 - postgresql
```
brew services start postgresql
createuser -s postgres
```
 - mysql
```
brew services start mysql
```
 - redis
```
brew services start redis
```
 - tmux
 - git
 - rbenv
 - rcm
 - rmtrash
 - ack
 - git-flow
 - reattach-to-user-namespace # cp in tmux from vim
 - bash-completion

## Brew cask packages
 - dropbox
 - zeplin
 - transmission
 - vlc

## Software
Goolgle Chrome
  - Download and install(are you sure it wasn't cask??)
Postico
  - Download and install
Slack
  - Download and install
spectacle
  - Download and install
Pow
  - curl get.pow.cx | sh
Homebrew
  - Run script from https://brew.sh
SourceTree
  - Download and install

## Operations
 - mute sound on terminal
   Terminal > Preferences > Profiles > Advanced > Audible bell(uncheck)
 - dock on the left
  System Preferences > Dock > Position on screen > Left
 - inverse mouse scroll
  Trackpad > *
 - Toggle autohide dock
  Cmd + Alt + D
 - setup terminal color, transparency
  * Pick profile
    - duplicate Pro and name Pro Vrabac
    - Font: Ubuntu Mono derivative Powerline 14 pt(was Monaco 10pt)
    - Text: check Antialias text
 - Assign a key to each Space
  Keyboard > Shortcuts > MissionControl > Check Switch to Desktop n
 - Powerline fonts
  - clone fonts https://github.com/powerline/fonts
  - run ./install.sh
  - Terminal > Preferences > Text > Font > Ubuntu Mono derivative Powerline 14 pt.(was Monaco 10 pt)
  - font looks bolder on Pro compared to Air

After:
  - export Postico connections
  - add valut token
```bash
echo "export VAULT_AUTH_TOKEN=secret-token" >> $HOME/.bash_profile.local
```
