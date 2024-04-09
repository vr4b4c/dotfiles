-- requires system dep [ripgrep](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies)
return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<C-p>",
      function()
        require("telescope.builtin").find_files()
      end,
    },
    {
      "<C-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      -- pickers = {
      --   find_files = {
      --     hidden = true
      --   }
      -- },
      defaults = {
        mappings = {
          i = {
            ["<C-u>"] = false,
            -- KeyMap(Telescope): <C-k> move to selection to previous item
            ["<C-k>"] = actions.move_selection_previous,
            -- KeyMap(Telescope): <C-j> move to selection to next item
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })

    local builtin = require("telescope.builtin")
    -- KeyMap(Telescope): <C-p> launch telescope
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    -- KeyMap(Telescope): <C-f> launch live grep
    -- TODO: not sure if usefull
    -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end,
}
