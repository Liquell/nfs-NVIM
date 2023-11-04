-- Hello message
print('Road to hell')

-- Cunstom files 
require('config.remap')
require('config.packer')
require('config.ui')

-- Nvim Tree
require("nvim-tree").setup()

-- LSP
require('config.lspconfig')
require('config.treesitter')
require('config.cmpconfig')

-- BufferLines
require('bufferline').setup{}

-- Nvim comment
require'nvim_comment'.setup()

-- File Type detect
require('config.ftd')

-- Other
require("which-key").setup{}
require('config.wk')
require('config.lualine')
require('config.miniMove')
