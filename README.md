# Dotfiles

## Config
Secret key for encryption is stored in `1Password > Dotfiles > DOTFILES_SECRET_KEY`

## Backup
  - Export Brew bundle `brew bundle dump --force`
  - Commit and push dotfiles changes
  - Run `DOTFILES_SECRET_KEY=*** script/backup-secrets.sh`
  - Export Postico connections
    - upload archive to [Dropbox](https://www.dropbox.com/home/Private/software/postico-connections)

## Install
  - Install [Brew](https://brew.sh)
  - [Download](https://github.com/vr4b4c/dotfiles) dotfiles as .zip and unzip into `~/dotfiles`
  - `cd` into dotfiles directory
  - Read secret key for encryption from `1Password > Dotfiles > DOTFILES_SECRET_KEY`
  - Run `DOTFILES_SECRET_KEY=*** script/restore-secrets.sh`
  - Install git `brew install git`
  - Clone dotfiles: `git clone git@github.com:vr4b4c/dotfiles.git $HOME/dotfiles`
  - Install rcm `brew install rcm`
  - Decide which hostname to use (supported hostnames are `host-*` directories, `-B` switch in the next command)
  - Setup dotfiles: `RCRC=$HOME/dotfiles/rcrc rcup -B vrabac`
  - Install Brew cask packages with `Cmd + Space`

### OSX
  - Dock on the left
    - `System Preferences > Dock > Position on screen > Left`
  - Inverse mouse scroll
    - `System Preferences > Trackpad > Scroll & Zoom > (uncheck) Scroll Direction: Natural`
  - Keyboard speed
    - `System Preferences > Keyboard > Key repeat > Slide to Fast`
    - `System Preferences > Keyboard > Delay until repeat > Slide to Short`
  - Disable fn key to trigger input source change `System Preferences > Keyboard > Pres fn key to: Do Nothing`
  - Toggle auto-hide dock `Cmd + Alt + D`
  - Add second virtual Desktop `^ + arrow up` clik on the `+` icon on the right side
  - Switch to Desktop N `System Preferences > Keyboard > Keybboard Shortcuts... > Mission Control > Mission Control > (check) Switch to Desktop N`

### Oh my zsh
  - Installation [instructions](https://ohmyz.sh/#install)

### iTerm2
  - Download and install themes
    - [tokyo night](https://github.com/folke/tokyonight.nvim/blob/main/extras/iterm/tokyonight_storm.itermcolors)
    - [catppuccin](https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors)
  - Select theme in `iterm2 > Settings > Profiles > Colors > Color presets`
  - Set transparency `iterm2 > Settings > Profiles > Window > Transparency = 10`
  - Allow clipboard usage `iterm2 > Settings > General > Selection > (check) Applications in terminal may access clipboard`
  - Mute sound `iterm2 > Settings > Profiles > Default > Terminal > (check) Silence bell`

### Rectangle
  - Start on login `Rectangle > Preferences... > System (3rd tab) > (check) Launch on login`

### Croatian/US keyboard for Mac
  - Instalation [instructions](https://github.com/kost/Croatian-US-mac#installation)
  - Restart the machine for the layout to be registered with the systemselect
  - Select the new layout (listed under `Others`)

### Tmux
  - Install [tmux plugin manager](https://github.com/tmux-plugins/tpm#installation)
  - Italic font [fix](https://gist.github.com/gyribeiro/4192af1aced7a1b555df06bd3781a722)

### Neovim
  - tsserver LSP system depenencies
    - Install nodejs plugin `asdf plugin add nodejs`
    - Install default nodejs version `asdf install nodejs X.Y.Z`
    - [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver)

### Links
  - Thoughtbot [dotfiles](https://github.com/thoughtbot/dotfiles)
  - [kicstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
  - [LazyVim](https://www.lazyvim.org/)

### Docs
  - [Wiki](docs/wiki.md)

# TODO:
  - check lua files in overcommit
