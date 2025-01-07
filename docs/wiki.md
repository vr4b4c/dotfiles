# Wiki

## Contributing
To setup dev environment run
```bash
script/dev-setup.sh
```

Review and verify installed overcommit hooks
```bash
bundle exec overcommit --sign
```

## Fonts
Cool looking fonts
 - Meslo LGS NF (comes with Powerlevel10k)
 - FiraCode Nerd Font Mono

## Customizations
Configuration setup is controlled via custom env variables. Custom variables are prefixed with `V_`.

### V_HOST
Used to load host specific NeoVim plugin directory.

### V_THEME
Used to load Tmux theme and NeoVim colorscheme. Supported options are
- `tokyo-night-day`
- `tokyo-night-storm`
- `catppuccin-mocha`
- `catppuccin-latte`

To change the theme
- update the V_THEME in shell rc files
- restart tmux (exit all tmux sessions and `tmux kill-server`)
- change the color preset in the `iTerm2 > Settings > Profile > Colors > Color presets`
- restart iTerm2

## Ideas
  - Josh Medeski [dotfiles](https://github.com/joshmedeski/dotfiles)
    - OSX [options](https://github.com/joshmedeski/dotfiles/blob/main/install/osx.sh) looks very interesting
    - [gitlinker](https://github.com/joshmedeski/dotfiles/blob/main/.config/nvim/lua/plugins/gitlinker.lua)

## Tricks
  - Run neovim in [Docker](https://github.com/LazyVim/LazyVim?tab=readme-ov-file#-getting-started)

## Brew
Common brew operations

### Check reverse dependency
Check with packages depend on a particular package.
```bash
brew uses --recursive --installed <package>
```

### Dry run brew dump
Print brew dump to standard output to cross reference with ~/.Brewfile
```bash
brew bundle dump --file=-
```
