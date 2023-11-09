vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'rstacruz/vim-closer'


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
  use "folke/tokyonight.nvim"
  -- LSP
  use 'neovim/nvim-lspconfig'  -- Configurations for Nvim LSP
  use 'williamboman/mason.nvim'  -- Portable package manager for Neovim
  use 'williamboman/mason-lspconfig.nvim'

  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Auto-completion plugin
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  use ('neoclide/coc.nvim', { branch = 'release' })


  -- use {
  --   'hrsh7th/nvim-cmp',
  --   requires = {
  --     'hrsh7th/cmp-buffer', -- buffer completions
  --     'hrsh7th/cmp-path',   -- path completions
  --     'hrsh7th/cmp-cmdline',-- cmdline completions
  --     'hrsh7th/cmp-nvim-lsp'-- LSP completions
  --   },
  --   config = function()
  --     local cmp = require('cmp')
  --     cmp.setup({
  --       -- Setup completion
  --       mapping = {
  --         -- Define your own key mappings
  --       },
  --       sources = cmp.config.sources({
  --         { name = 'nvim_lsp' },
  --         { name = 'buffer' },
  --       })
  --     })
  --   end
  -- }

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
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup({
        signs = {
          add = { hl = 'DiffAdd', text = '│', numhl = 'GitSignsAddNr' },
          change = { hl = 'DiffChange', text = '│', numhl = 'GitSignsChangeNr' },
          delete = { hl = 'DiffDelete', text = '_', numhl = 'GitSignsDeleteNr' },
          topdelete = { hl = 'DiffDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
          changedelete = { hl = 'DiffChange', text = '~', numhl = 'GitSignsChangeNr' },
        },
        signcolumn = true,  
        numhl = false,      
        linehl = false,     
        word_diff = false,  
        watch_gitdir = {
          interval = 1000,
          follow_files = true
        },
        attach_to_untracked = true,
        current_line_blame = false, 
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', 
          delay = 1000,
          ignore_whitespace = false,
        },
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, 
        max_file_length = 40000,
        preview_config = {
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
        yadm = {
          enable = false,
        },
      })
    end
  }
  use 'kdheepak/lazygit.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- use 'echasnovski/mini.nvim'

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  }
  use 'tpope/vim-surround'

    if packer_bootstrap then
      require('packer').sync()
    end
  end)
