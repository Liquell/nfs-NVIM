local run = true

-- Hello message
print('Road to hell')
require('config.packer')
if run then
  -- Cunstom files 
  require('config.remap')
  require('config.ui')

  -- Nvim Tree
  require("nvim-tree").setup()

  -- LSP
  require('config.lspconfig')
  require('config.treesitter')
  require('config.cocconfig')
  -- require('config.cmpconfig')

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
  require'colorizer'.setup()
end
