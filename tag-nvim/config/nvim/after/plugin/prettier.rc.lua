local prettier = require('prettier')

local group = vim.api.nvim_create_augroup("prettier-rb-format-on-save", { clear = false })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = { "*.rb" },
  callback = function(ev)
    vim.api.nvim_command(':Prettier')
  end,
  desc = "[Prettier] format on save",
})

prettier.setup({
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    -- "javascriptreact",
    "json",
    "less",
    -- "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
