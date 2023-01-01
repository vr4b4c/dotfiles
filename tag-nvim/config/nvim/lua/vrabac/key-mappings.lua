-- Use ctrl-[hjkl] to select the active split!
-- KeyMap: <C-k> select split above
vim.api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
-- KeyMap: <C-j> select split below
vim.api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
-- KeyMap: <C-h> select split to the left
vim.api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
-- KeyMap: <C-l> select split to the right
vim.api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>", ":nohlsearch<Bar>:echo<CR>", { noremap = true, silent = true })

-- redraw!
-- nnoremap <leader>r :redraw!<cr>

-- Tabularize
-- nmap <Leader>a= :Tabularize /=<CR>
-- vmap <Leader>a= :Tabularize /=<CR>
-- nmap <Leader>a: :Tabularize /:\zs<CR>
-- vmap <Leader>a: :Tabularize /:\zs<CR>
