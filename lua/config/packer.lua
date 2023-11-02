vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Nvim Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- Theme
  use { "ellisonleao/gruvbox.nvim" }
  use "savq/melange-nvim"
  -- LSP
  use 'neovim/nvim-lspconfig'  -- Configurations for Nvim LSP
  use 'williamboman/mason.nvim'  -- Portable package manager for Neovim

  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Auto-completion plugin
  use 'hrsh7th/nvim-cmp'  -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'  -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip'  -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'  -- Snippets plugin
  -- Buffers 
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- Other
  use 'terrortylor/nvim-comment'
  use "lukas-reineke/indent-blankline.nvim"
  -- use "lewis6991/gitsigns.nvim"
  use "RRethy/vim-illuminate"
  -- Add this inside your packer startup function
  use 'folke/which-key.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
