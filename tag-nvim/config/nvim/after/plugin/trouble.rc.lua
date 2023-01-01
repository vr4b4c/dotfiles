trouble = require('trouble')

trouble.setup({})

-- KeyMap: <leader>tt toggle trouble
vim.keymap.set('n', '<leader>tt', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true}
)

-- KeyMap: <leader>tw toggle trouble workspace diagnostic
vim.keymap.set('n', '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>',
  {silent = true, noremap = true}
)

-- KeyMap: <leader>td toggle trouble doucment diagnostic
vim.keymap.set('n', '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>',
  {silent = true, noremap = true}
)

-- KeyMap: <leader>td toggle trouble loc list
vim.keymap.set('n', '<leader>tl', '<cmd>TroubleToggle loclist<cr>',
  {silent = true, noremap = true}
)

-- KeyMap: <leader>td toggle trouble quickfix
vim.keymap.set('n', '<leader>tq', '<cmd>TroubleToggle quickfix<cr>',
  {silent = true, noremap = true}
)

-- KeyMap: <leader>td toggle trouble lsp refs
vim.keymap.set('n', '<leader>tr', '<cmd>TroubleToggle lsp_references<cr>',
  {silent = true, noremap = true}
)
