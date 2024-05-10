return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    local start, _, flavour = string.find(vim.env.V_THEME, "catppuccin%-(%a+)")
    if start then
      if flavour == "mocha" then
        catppuccin.setup({
          flavour = "mocha",
          show_end_of_buffer = true,
          transparent_background = true,
        })
        vim.cmd.colorscheme("catppuccin")
      elseif flavour == "latte" then
        catppuccin.setup({
          flavour = "latte",
          show_end_of_buffer = true,
          transparent_background = true,
        })
      else
        print(string.format("Unrecognized catppuccin flavour: %s", flavour))
      end

      vim.cmd.colorscheme("catppuccin")
    end
  end,
}
