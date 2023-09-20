local keymap = vim.keymap.set
 require("lspsaga").setup({
    finder = {
      keys = {
        vsplit = 'v',
        split = 'x'
      }
    }
 })

-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
-- KeyMap: <leader>lf launch LSP finder
keymap("n", "<leader>lf", "<cmd>Lspsaga finder<CR>", { silent = true })

-- KeyMap: <leader>lca launch LSP code action
keymap({"n","v"}, "<leader>lca", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- KeyMap: <leader>lr LSP rename
keymap("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
-- KeyMap: <leader>ld LSP peek definition
keymap("n", "<leader>ld", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Show line diagnostics
-- KeyMap: <leader>lld LSP line diagnostic
keymap("n", "<leader>lld", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
-- KeyMap: <leader>lcd LSP cursor diagnostic
keymap("n", "<leader>lcd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
-- KeyMap: <leader>lo LSP outline
keymap("n","<leader>lo", "<cmd>LSoutlineToggle<CR>",{ silent = true })

-- Hover Doc
-- KeyMap: <leader>lk LSP hover doc
keymap("n", "<leader>lk", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Float terminal
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- if you want pass somc cli command into terminal you can do like this
-- open lazygit in lspsaga float terminal
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
-- close floaterm
-- keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
