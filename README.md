# Dotfiles

## Software
- [Postico](https://eggerapps.at/postico/)
- [Rectangle](http://rectangleapp.com)
- [asdf](https://github.com/asdf-vm/asdf#setup)
- [Croatian-US-mac keyboard](https://github.com/kost/Croatian-US-mac#installation)

## Customizations

### OSX
  - Mute sound on terminal
    - `Terminal > Preferences > Profiles > Advanced > (uncheck) Audible bell & Visual Bell`
  - Dock on the left
    - `System Preferences > Dock > Position on screen > Left`
  - Inverse mouse scroll
    - `System Preferences > Trackpad > Scroll & Zoom > (uncheck) Scroll Direction: Natural`
  - Keyboard speed
    - `System Preferences > Keyboard > Key repeat > Slide to Fast`
    - `System Preferences > Keyboard > Delay until repeat > Slide to Short`
  - Toggle auto-hide dock `Cmd + Alt + D`

### OSX + Vim + Powerline fonts
  - Powerline fonts
    clone fonts from [powerline repo](https://github.com/powerline/fonts)
    run `./install.sh`
  - Setup terminal color, transparency
    - `duplicate Pro and name Pro Vrabac`
    - `change font > Ubuntu Mono derivative Powerline 14 pt`
    - `(check) Text > Antialias tex`

## Backup
Secret key for encryption is stored in `1Password > Dotfiles > DOTFILES_SECRET_KEY`
  - Export Brew bundle `brew bundle dump --force`
  - Commit and push dotfiles changes
  - Encrypt and upload ssh keys
```
cd $HOME
COPYFILE_DISABLE=1 tar -czvf ssh.tgz .ssh
openssl aes-256-cbc -e -md md5 -in ssh.tgz -out ssh.tgz.enc -k $DOTFILES_SECRET_KEY
# upload ssh.tgz.enc to https://www.dropbox.com/home/Private/software
del ssh.tgz ssh.tgz.enc
```
  - Encrypt and upload shell secrets
```
cd $HOME
openssl aes-256-cbc -e -md md5 -in .secrets -out secrets.enc -k $DOTFILES_SECRET_KEY
# upload secrets.enc https://www.dropbox.com/home/Private/software
del secrets.enc
```
  - Export Postico connections
    - upload archive to [Dropbox](https://www.dropbox.com/home/Private/software/postico-connections)

## Install
  - Install [Brew](https://brew.sh)
  - [Download](https://www.dropbox.com/home/Private/software/secrets.enc) and decrypt shell secrets
```
cd $HOME
openssl aes-256-cbc -d -md md5 -in secrets.enc -out .secrets -k $DOTFILES_SECRET_KEY
del secrets.enc
```
  - [Download](https://www.dropbox.com/home/Private/software/ssh.tgz.enc) and decrypt ssh keys
```
cd $HOME
openssl aes-256-cbc -d -md md5 -in ssh.tgz.enc -out ssh.tgz -k $DOTFILES_SECRET_KEY
tar -xzvf ssh.tgz
mv ssh .ssh
del ssh.tgz ssh.tgz.enc
```
  - Install git `brew install git`
  - Clone dotfiles: `git clone git@github.com:vr4b4c/dotfiles.git $HOME/dotfiles`
  - Install rcm `brew install rcm`
  - Setup dotfiles: `RCRC=$HOME/dotfiles/rcrc rcup`
  - Install Brew packages `brew bundle`
  - [Install tmux plugin manager](https://github.com/tmux-plugins/tpm#installation)
  - [Install tmux plugins](https://github.com/tmux-plugins/tpm#installing-plugins)
  - Import Postico connections
