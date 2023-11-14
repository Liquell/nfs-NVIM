local vim = vim
local transperent = false;

vim.o.number = true
vim.wo.relativenumber = true
vim.o.tabstop = 2
vim.o.wrap = false
vim.o.shiftwidth = 2
vim.o.scrolloff = 5
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

-- Themes
-- vim.cmd.colorscheme 'tokyonight-storm'
vim.cmd.colorscheme 'melange'
-- vim.cmd([[colorscheme gruvbox]])

-- Lines
local highlight = {
  "CursorColumn",
  "Whitespace",
}

if (transperent) then
  vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
end

require("ibl").setup()
