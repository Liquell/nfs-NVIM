vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[colorscheme melange]])

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
