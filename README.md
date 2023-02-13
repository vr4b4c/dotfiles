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

## Config
Secret key for encryption is stored in `1Password > Dotfiles > DOTFILES_SECRET_KEY`

## Backup
  - Export Brew bundle `brew bundle dump --force`
  - Commit and push dotfiles changes
  - Run `DOTFILES_SECRET_KEY= script/backup-secrets`
  - Export Postico connections
    - upload archive to [Dropbox](https://www.dropbox.com/home/Private/software/postico-connections)

## Install
  - Install [Brew](https://brew.sh)
  - [Download](https://github.com/vr4b4c/dotfiles) dotfiles as .zip and unzip
  - Change into dotfiles directory
  - Read secret key for encryption from `1Password > Dotfiles > DOTFILES_SECRET_KEY`
  - Run `DOTFILES_SECRET_KEY= script/restore-secrets`
  - Install git `brew install git`
  - [Install oh-my-zsh](https://ohmyz.sh/#install)
    - [Install autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
    - [Install powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
    - Run `p10k configure`
    - [Download and install iterm theme](https://github.com/folke/tokyonight.nvim/blob/main/extras/iterm/tokyonight_storm.itermcolors)
    - Set `iterm2 > Preferences > Profiles > Window > Transparency` to 10
  - Install Brew packages `brew bundle`
  - [Install tmux plugin manager](https://github.com/tmux-plugins/tpm#installation)
  - [Install tmux plugins](https://github.com/tmux-plugins/tpm#installing-plugins)
  - [Install packer nvim](https://github.com/wbthomason/packer.nvim#quickstart)
  - Run `nvim` and install packages with `:PackerInstall`
  - Install `nvim` language servers
    - [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver)
  - TODO: something is wrong with LSP (some keymaps aren't working)
  - Clone dotfiles: `git clone git@github.com:vr4b4c/dotfiles.git $HOME/dotfiles`
  - Install rcm `brew install rcm`
  - Setup dotfiles: `RCRC=$HOME/dotfiles/rcrc rcup`
  - Import Postico connections
  - TODO: bootstrap cask apps from Brewfile
