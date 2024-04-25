require("vrabac/options")
require("vrabac/auto-commands")

if vim.fn.has("macunix") then
  require("vrabac/arch/macos")
end

require("vrabac/lazy")
