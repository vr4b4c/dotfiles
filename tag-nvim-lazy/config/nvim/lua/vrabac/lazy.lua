-- lazy.nvim [installation guide](https://github.com/folke/lazy.nvim?tab=readme-ov-file#-installation)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {{ import = "vrabac/plugins" }}

-- Add host specific plugins
local host = os.getenv('V_HOST')
if host then
  local host_plugin_dir = 'vrabac/host/' .. host
  local abs_host_plugin_dir = vim.fn.stdpath("config") .. '/lua/' .. host_plugin_dir
  if vim.fn.isdirectory(abs_host_plugin_dir) == 1 then
    table.insert(plugins, { import = host_plugin_dir })
  end
end

require("lazy").setup(plugins)
