# Dotfiles

## Config
Secret key for encryption is stored in `1Password > Employee > Dotfiles > DOTFILES_SECRET_KEY`

## Backup
  - Export Brew bundle `brew bundle dump --force`
  - Commit and push dotfiles changes
  - Run `script/backup-secrets.sh`
  - Backup archives from the previous step
    - `ssh.tgz.enc`
    - `secrets.enc`

## Install
  - Install [Brew](https://brew.sh)
  - Install "build" packages `brew install 1password-cli rcm`
  - Add 1Password CLI account `op account add`
  - Login using 1Password CLI `op signin`
  - Run installation script
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/vr4b4c/dotfiles/HEAD/script/install.sh)"
```
  - Decide which hostname to use (supported hostnames are `host-*` directories, `-B` switch in the next command)
  - Setup dotfiles: `RCRC=$HOME/dotfiles/rcrc rcup -B <hostname>` (without `host-` prefix)
  - Install/activate Brew cask packages with `Cmd + Space`

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
    - [catppuccin latte](https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-latte.itermcolors)
    - [catppuccin mocha](https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors)
    - [tokyo night day](https://github.com/folke/tokyonight.nvim/blob/main/extras/iterm/tokyonight_day.itermcolors)
    - [tokyo night storm](https://github.com/folke/tokyonight.nvim/blob/main/extras/iterm/tokyonight_storm.itermcolors)
  - Select theme in `iTerm2 > Settings > Profiles > Colors > Color presets`
  - Set transparency `iTerm2 > Settings > Profiles > Window > Transparency = 10`
  - Allow clipboard usage `iTerm2 > Settings > General > Selection > (check) Applications in terminal may access clipboard`
  - Mute sound `iTerm2 > Settings > Profiles > Default > Terminal > (check) Silence bell`

### Rectangle
  - Start on login `Rectangle > Preferences... > System (3rd tab) > (check) Launch on login`

### Croatian/US keyboard for Mac
  - Instalation [instructions](https://github.com/kost/Croatian-US-mac#installation)
  - Restart the machine for the layout to be registered with the systemselect
  - Select the new layout (listed under `Others`)

### Tmux
  - catppuccin theme plugin interferes with other themes
    - on first install, set one of catppuccin themes and run tpm plugin installation procedure
  - Italic font [fix](https://gist.github.com/gyribeiro/4192af1aced7a1b555df06bd3781a722)

### Links
  - Thoughtbot [dotfiles](https://github.com/thoughtbot/dotfiles)
  - [kicstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
  - [LazyVim](https://www.lazyvim.org/)

### Docs
  - [Wiki](docs/wiki.md)
