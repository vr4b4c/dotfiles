local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
        -- KeyMap(Telescope): <C-k> move to selection to previous item
        ["<C-k>"] = actions.move_selection_previous,
        -- KeyMap(Telescope): <C-j> move to selection to next item
        ["<C-j>"] = actions.move_selection_next
      }
    }
  }
})

local builtin = require('telescope.builtin')
-- KeyMap(Telescope): <C-p> launch telescope
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- KeyMap(Telescope): <C-f> launch live grep
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
-- TODO: not sure if usefull
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
