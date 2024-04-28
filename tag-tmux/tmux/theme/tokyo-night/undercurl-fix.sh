#!/usr/bin/env bash

# [Undercurl fix](https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#fix-undercurls-in-tmux)
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
