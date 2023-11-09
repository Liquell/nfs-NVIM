vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vimKey = vim.keymap.set
local vimCmd = vim.cmd
local vimG = vim.g

vimKey("n", "<leader>e", vimCmd.NvimTreeToggle)
vimKey("n", "<leader>o", vimCmd.NvimTreeFocus)
vimKey("n", "<leader>s", vimCmd.w)
vimKey("n", "<C-s>", vimCmd.w)
vimKey("i", "jj", "<Esc>")

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Telescope
local builtin = require('telescope.builtin')

vimKey('n', '<leader>ff', builtin.find_files, {})
vimKey('n', '<leader>fw', builtin.live_grep, {})
vimKey('n', '<leader>fb', builtin.buffers, {})


-- buffers

map('n', '<C-t>', ':tabnew<CR>', opts)       -- Create a new tab
map('n', '<C-w>', ':bd!<CR>', opts)          -- Close the current buffer
map('n', '<leader>w', ':bd!<CR>', opts)          -- Close the current buffer


for i = 1, 9 do
    map("n", "<leader>" .. tostring(i), "<Cmd>BufferLineGoToBuffer " .. tostring(i) .. "<CR>", opts)
end

map("n", "<leader>n", "<Cmd>BufferLineCycleNext<CR>", opts)
map("n", "<leader>p", "<Cmd>BufferLineCyclePrev<CR>", opts)

-- Comment 
map('n', '<leader>/', ':CommentToggle<CR>', opts)
map('v', '<leader>/', ':CommentToggle<CR>', opts)

-- Copilot 
vimG.copilot_no_tab_map = true
vimG.copilot_assume_mapped = true
map("i", "<leader>y", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- UndoTree
map('n', '<leader>u', ':UndotreeToggle<CR>', opts)

-- Harpoon 
local harpoon_mark = require('harpoon.mark')
local harpoon_ui = require('harpoon.ui')

map('n', '<leader>ha', '', { noremap = true, silent = true, callback = harpoon_mark.add_file })
map('n', '<leader>hl', '', { noremap = true, silent = true, callback = harpoon_ui.toggle_quick_menu })
for i = 1, 9 do
    map('n', '<leader>h' .. i, '', { noremap = true, silent = true, callback = function() harpoon_ui.nav_file(i) end })
end


-- LSP
-- map('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>ls', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>ln', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lj', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap=true, silent=true })
-- map('n', '<leader>lk', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap=true, silent=true })
--
-- Mappings in COCconfig file

-- LazyGit 
map("n", "<leader>lg", ":LazyGit<CR>", opts)

-- TogleTerm
map("n", "<leader>tt", ":ToggleTerm<CR>", opts)

