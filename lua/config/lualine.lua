require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox', -- Set the theme to gruvbox
    component_separators = { left = '', right = ''}, -- Remove component separators
    section_separators = { left = '', right = ''}, -- Remove section separators
    disabled_filetypes = {'alpha'}, -- Disable for 'alpha' filetype
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      {
        function()
          local names = {}
          for _, server in pairs(vim.lsp.buf_get_clients(0)) do
            table.insert(names, server.name)
          end
          if vim.tbl_isempty(names) then
            return ' [No LSP]'
          else
            return ' [' .. table.concat(names, ' ') .. ']'
          end
        end,
      },
      'filename'
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {
    'quickfix',
    'toggleterm',
    'fugitive',
    'symbols-outline',
    'nvim-dap-ui',
  }
}

