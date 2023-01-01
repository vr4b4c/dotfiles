require('vrabac/base')
require('vrabac/key-mappings')
require('vrabac/highlights')

require('vrabac/plugins')

if vim.fn.has("macunix") then
  require('vrabac/macos')
end
