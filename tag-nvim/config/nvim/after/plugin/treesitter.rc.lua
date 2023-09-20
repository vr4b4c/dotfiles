require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'typescript', 'markdown', 'markdown_inline', 'ruby' },
  -- ensure_installed = { 'c', 'lua', 'ruby', 'typescript', 'elixir' },
  highlight = {
    enable = true,
  }
})
