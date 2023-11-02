vim.o.number = true
vim.wo.relativenumber = true

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
