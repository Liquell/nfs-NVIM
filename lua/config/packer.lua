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
  use 'L3MON4D3/LuaSnip'
  use {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-buffer', -- buffer completions
    'hrsh7th/cmp-path',   -- path completions
    'hrsh7th/cmp-cmdline',-- cmdline completions
    'hrsh7th/cmp-nvim-lsp'-- LSP completions
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      -- Setup completion
      mapping = {
        -- Define your own key mappings
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      })
    })
  end
}
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
  use 'github/copilot.vim'
  use 'mg979/vim-visual-multi'
  use 'mbbill/undotree'
  use 'theprimeagen/harpoon'
  use 'jeetsukumaran/vim-buffergator'
  use 'jwalton512/vim-blade'
  use 'mattn/emmet-vim'
end)
