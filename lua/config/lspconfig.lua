local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup({})

mason_lspconfig.setup({
    ensure_installed = { 'tsserver', 'emmet_ls', 'intelephense' },
    automatic_installation = true,
})

local on_attach = function(client, bufnr) end

local server_options = {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
}

lspconfig.emmet_ls.setup({
    filetypes = { 'html', 'css', 'blade', 'javascriptreact', 'typescriptreact', 'blade.php' }, -- Add 'blade.php' here
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
})

for _, lsp in ipairs(mason_lspconfig.get_installed_servers()) do
    lspconfig[lsp].setup(server_options)
end

lspconfig.intelephense.setup(server_options)

