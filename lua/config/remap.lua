vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vimKey = vim.keymap.set

vimKey("n", "<leader>e", vim.cmd.NvimTreeToggle)
vimKey("n", "<leader>o", vim.cmd.NvimTreeFocus)
vimKey("n", "<leader>s", vim.cmd.w)
vimKey("n", "<C-s>", vim.cmd.w)
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


map('n', '<Leader>1', ':tabn 1<CR>', opts)
map('n', '<Leader>2', ':tabn 2<CR>', opts)
map('n', '<Leader>3', ':tabn 3<CR>', opts)
map('n', '<Leader>4', ':tabn 4<CR>', opts)
map('n', '<Leader>5', ':tabn 5<CR>', opts)
map('n', '<Leader>6', ':tabn 6<CR>', opts)
map('n', '<Leader>7', ':tabn 7<CR>', opts)
map('n', '<Leader>8', ':tabn 8<CR>', opts)
map('n', '<Leader>9', ':tabn 9<CR>', opts)
