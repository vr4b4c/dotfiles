return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      -- dark mode
      style = "storm",
      transparent = true,
      -- light mode
      -- style = 'day',
      -- transparent = false,
    })

    if vim.env.V_THEME == "tokyo-night" then
      vim.cmd.colorscheme("tokyonight")
    end
  end,
}