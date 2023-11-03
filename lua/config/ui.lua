vim.o.number = true
vim.wo.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim-logs/undodir")
vim.opt.undolevels = 1000
-- Foldings
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99

vim.o.background = "dark" -- or "light" for light mode
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'
-- vim.cmd([[colorscheme gruvbox]])

-- Lines
local highlight = {
  "CursorColumn",
  "Whitespace",
}
-- require("ibl").setup {
  --     indent = { highlight = highlight, char = "" },
  --     whitespace = {
    --         highlight = highlight,
    --         remove_blankline_trail = false,
    --     },
    --     scope = { enabled = false },
    -- }

require("ibl").setup()
