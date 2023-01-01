require('nvim-treesitter.configs').setup({
  ensure_installed = { 'c', 'lua', 'ruby', 'typescript', 'elixir' },
  highlight = {
    enable = true,
  }
})
