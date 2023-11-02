-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
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
end)
