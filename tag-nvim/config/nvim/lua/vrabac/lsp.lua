-- remaining: ts_ls, terraformls, pyright
vim.lsp.enable("lua_ls") -- TODO: this doesn't seem enabled
vim.lsp.enable("rubocop")
vim.lsp.enable("solargraph")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>lK", vim.lsp.buf.signature_help, opts)
    -- not sure what it does
    -- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set("n", "<leader>lw", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set("n", "<leader>lD", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>lf", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})
