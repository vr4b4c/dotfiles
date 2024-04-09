local cmp = require('cmp')
local types = require('cmp.types')
local luasnip = require('luasnip')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-j>'] = {
      i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
    },
    ['<C-k>'] = {
      i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
    },
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})
