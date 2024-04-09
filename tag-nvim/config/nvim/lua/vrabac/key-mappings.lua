local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Use ctrl-[hjkl] to select the active split!
-- KeyMap: <C-k> select split above
keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
-- KeyMap: <C-j> select split below
keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
-- KeyMap: <C-h> select split to the left
keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
-- KeyMap: <C-l> select split to the right
keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- KeyMap: <Space> reset search highlights
keymap.set("n", "<Space>", ":nohlsearch<Bar>:echo<CR>", opts)
-- redraw!
-- nnoremap <leader>r :redraw!<cr>

-- Tabularize
-- nmap <Leader>a= :Tabularize /=<CR>
-- vmap <Leader>a= :Tabularize /=<CR>
-- nmap <Leader>a: :Tabularize /:\zs<CR>
-- vmap <Leader>a: :Tabularize /:\zs<CR>
