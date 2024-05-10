return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local tokyonight = require("tokyonight")

    local start, _, style = string.find(vim.env.V_THEME, "tokyo%-night%-(%a+)")
    if start then
      if style == "storm" then
        tokyonight.setup({
          style = "storm",
          transparent = true,
        })
      elseif style == "day" then
        tokyonight.setup({
          style = "day",
          transparent = false,
        })
      else
        print(string.format("Unrecognized tokyonight style: %s", style))
      end

      vim.cmd.colorscheme("tokyonight")
    end
  end,
}
