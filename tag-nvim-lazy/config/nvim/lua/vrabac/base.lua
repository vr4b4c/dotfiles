-- inspired by [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- preview substitutions live
vim.opt.inccommand = 'split'
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.fileencoding = 'utf-8'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.splitright = true
vim.opt.splitbelow = true

-- copied from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/craftzdog/highlights.lua
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
