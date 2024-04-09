require("vrabac/base")

if vim.fn.has("macunix") then
  require("vrabac/arch/macos")
end

require("vrabac/lazy")
