local nvim_lsp = require('lspconfig')
local mason = require('mason')

mason.setup()

local servers = {'pyright', 'tsserver', 'lua_ls', 'gopls', 'rust_analyzer', 'clangd'}  -- Add or remove servers as needed
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- For PHP
local lspconfig = require('lspconfig')
lspconfig.intelephense.setup {}
