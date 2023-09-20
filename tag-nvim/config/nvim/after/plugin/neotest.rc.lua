local neotest = require("neotest")

neotest.setup({
  diagnostic = {
    enabled = true,
    severity = vim.diagnostic.severity.HINT,
  },
  output = {
    enabled = true,
    open_on_run = "short",
  },
  icons = {
    passed = "",
    running = "",
    failed = "",
    skipped = "",
    unknown = "",
  },
  adapters = {
    require('neotest-rspec')({ 
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    })
  },
})

local keymap = vim.keymap.set
-- KeyMap: <leader>tn Run nearest test
keymap("n", "<leader>tn", function() neotest.run.run() end, { silent = true })

-- KeyMap: <leader>ta Attach to nearest test
keymap("n", "<leader>ta", function() neotest.run.attach() end, { silent = true })

-- KeyMap: <leader>to Open nearest output
keymap("n", "<leader>to", function() neotest.output.open() end, { silent = true })

-- KeyMap: <leader>tp Open panel
keymap("n", "<leader>tp", function() neotest.output_panel.open() end, { silent = true })

-- KeyMap: <leader>ts Toggle summary
keymap("n", "<leader>ts", function() neotest.summary.toggle() end, { silent = true })



