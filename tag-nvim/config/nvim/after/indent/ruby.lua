-- [Fix Ruby dot indetation](https://github.com/nvim-treesitter/nvim-treesitter/issues/3363#issuecomment-1538607633)
-- https://github.com/d4be4st/dotfiles/blob/master/config/nvim/after/indent/ruby.lua
vim.opt.indentkeys:remove(".")
