return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    if vim.env.V_THEME == "catppuccin-mocha" then
      catppuccin.setup({
        flavour = "mocha",
        show_end_of_buffer = true,
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    elseif vim.env.V_THEME == "catppuccin-latte" then
      catppuccin.setup({
        flavour = "latte",
        show_end_of_buffer = true,
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end
  end,
}
