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
