local wk = require("which-key")

-- Registering the mappings
wk.register({
  -- Normal mode mappings ('n' for normal)
  ["<leader>"] = {
    e = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
    o = { ":NvimTreeFocus<CR>", "Focus NvimTree" },
    s = { ":w<CR>", "Save File" },
    f = {
    name = "Find", -- Group name
      f = { "<cmd>Telescope find_files<cr>", "Find Files" },
      w = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    },
    w = { ":bd!<CR>", "Close Buffer" },
    ["/"] = { ":CommentToggle<CR>", "Toggle Comment" },
    -- Add more leader keybindings here
  },
  ["<C-s>"] = { ":w<CR>", "Save File" },
  -- Insert mode mappings ('i' for insert)
  ["jj"] = { "<Esc>", "Escape" },
  -- Add other mode keybindings here
}, { prefix = "<leader>" })

-- Registering the buffer-related mappings
wk.register({
  ["<leader>"] = {
    ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "Buffer 1" },
    ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "Buffer 2" },
    -- ... add more buffer numbers as needed
    n = { "<Cmd>BufferLineCycleNext<CR>", "Next Buffer" },
    p = { "<Cmd>BufferLineCyclePrev<CR>", "Previous Buffer" },
  },
  ["<C-t>"] = { ":tabnew<CR>", "New Tab" },
  ["<C-w>"] = { ":bd!<CR>", "Close Buffer" },
  -- Add more non-leader keybindings here
}, { prefix = "<leader>" })

-- Register window management mappings
wk.register({
  ["<C-h>"] = { "<C-w>h", "Window Left" },
  ["<C-j>"] = { "<C-w>j", "Window Down" },
  ["<C-k>"] = { "<C-w>k", "Window Up" },
  ["<C-l>"] = { "<C-w>l", "Window Right" },
})


require("which-key").setup {}
