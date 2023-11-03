-- Import the required modules
local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

-- Mason setup
mason.setup({
    -- Configuration options for mason
})

-- Mason LSP Config setup
mason_lspconfig.setup({
    -- Configuration options for mason-lspconfig
    ensure_installed = { 'tsserver', 'emmet_ls', 'intelephense' },
    automatic_installation = true,
})

-- Function to configure LSP on attach
local on_attach = function(client, bufnr)
  -- Set up buffer keymaps, etc.
end

-- Common lsp server setup options
local server_options = {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
}

-- Loop through the servers specified in `ensure_installed` and set them up
for _, lsp in ipairs(mason_lspconfig.get_installed_servers()) do
    lspconfig[lsp].setup(server_options)
end

-- Additional server-specific configurations can go here if required
-- Example for PHP using intelephense
lspconfig.intelephense.setup(server_options)

