require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'typescript' },
  -- ensure_installed = { 'c', 'lua', 'ruby', 'typescript', 'elixir' },
  highlight = {
    enable = true,
  }
})
