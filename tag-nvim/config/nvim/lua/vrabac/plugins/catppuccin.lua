return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      show_end_of_buffer = true,
      transparent_background = true,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
