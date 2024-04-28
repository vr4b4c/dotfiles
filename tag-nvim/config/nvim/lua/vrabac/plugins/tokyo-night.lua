return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local tokyonight = require("tokyonight")

    if vim.env.V_THEME == "tokyo-night-storm" then
      tokyonight.setup({
        style = "storm",
        transparent = true,
      })
      vim.cmd.colorscheme("tokyonight")
    elseif vim.env.V_THEME == "tokyo-night-day" then
      tokyonight.setup({
        style = "day",
        transparent = false,
      })
      vim.cmd.colorscheme("tokyonight")
    end
  end,
}
