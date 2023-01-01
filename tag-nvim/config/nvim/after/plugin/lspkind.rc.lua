local lspkind = require('lspkind')
local cmp = require('cmp')

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',

      before = function (entry, vim_item)
        return vim_item
      end
    })
  }
}
