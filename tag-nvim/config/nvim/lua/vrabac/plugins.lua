vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  use('neovim/nvim-lspconfig')
  -- requires system dep [ripgrep](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies)
  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  })
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use ({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
  })
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  })
  use({
    'MunifTanjim/prettier.nvim',
    requires = { 'jose-elias-alvarez/null-ls.nvim' }
  })
  use({
    'folke/trouble.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  })
  -- themes
  use('folke/tokyonight.nvim')

  -- Nightfox
  -- use('EdenEast/nightfox.nvim')

  -- Neosolarized
  -- use({
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- })
  
  -- dev stuff
  use('tpope/vim-commentary')
  use('christoomey/vim-tmux-navigator')
  use('pbrisbin/vim-mkdir')
  use('pantharshit00/vim-prisma')
  use('jparise/vim-graphql')
  use('onsails/lspkind.nvim')
  use('lewis6991/gitsigns.nvim')
  use {
    'nvim-neotest/neotest',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim',
      'olimorris/neotest-rspec'
    }
  }
end)
