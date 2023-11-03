local wk = require("which-key")

wk.setup {}

local mappings = {
  -- Normal mode mappings ('n' for normal)
  ["<leader>"] = {
    ["e"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
    ["o"] = { ":NvimTreeFocus<CR>", "Focus NvimTree" },
    ["s"] = { ":w<CR>", "Save File" },
    ["f"] = {
      name = "Find", -- Group name
      f = { "<cmd>Telescope find_files<cr>", "Find Files" },
      w = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    },
    ["w"] = { ":bd!<CR>", "Close Buffer" },
    ["/"] = { ":CommentToggle<CR>", "Toggle Comment" },
    ["u"] = { ":UndotreeToggle<CR>", "Toggle UndoTree" },
    ["h"] = {
      name = "Harpoon", -- Group name for Harpoon
      a = { function() require('harpoon.mark').add_file() end, "Add File to Harpoon" },
      l = { function() require('harpoon.ui').toggle_quick_menu() end, "Toggle Harpoon Menu" },
      ["1"] = { function() require('harpoon.ui').nav_file(1) end, "Harpoon File 1" },
      ["2"] = { function() require('harpoon.ui').nav_file(2) end, "Harpoon File 2" },
      ["3"] = { function() require('harpoon.ui').nav_file(3) end, "Harpoon File 3" },
      ["4"] = { function() require('harpoon.ui').nav_file(4) end, "Harpoon File 4" },
      ["5"] = { function() require('harpoon.ui').nav_file(5) end, "Harpoon File 5" },
      ["6"] = { function() require('harpoon.ui').nav_file(6) end, "Harpoon File 6" },
      ["7"] = { function() require('harpoon.ui').nav_file(7) end, "Harpoon File 7" },
      ["8"] = { function() require('harpoon.ui').nav_file(8) end, "Harpoon File 8" },
      ["9"] = { function() require('harpoon.ui').nav_file(9) end, "Harpoon File 9" },
      -- ... add mappings for 2-9 as well
    },
    ["l"] = {
      name = "LSP", -- Group name for LSP
      d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
      r = { "<cmd>lua vim.lsp.buf.references()<CR>", "List References" },
      h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
      s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
      n = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
      a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
      i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
      f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Code" },
      t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
      j = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
      k = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
    },
    -- BufferLine mappings
    ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "Buffer 1" },
    ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "Buffer 2" },
    ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "Buffer 3" },
    ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "Buffer 4" },
    ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "Buffer 5" },
    ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "Buffer 6" },
    ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "Buffer 7" },
    ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "Buffer 8" },
    ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "Buffer 9" },
    n = { "<Cmd>BufferLineCycleNext<CR>", "Next Buffer" },
    p = { "<Cmd>BufferLineCyclePrev<CR>", "Previous Buffer" },
  },
  ["<C-s>"] = { ":w<CR>", "Save File" },
  ["jj"] = { "<Esc>", "Escape" }, -- This should go under insert mode mappings, shown below
  ["<C-h>"] = { "<C-w>h", "Window Left" },
  ["<C-j>"] = { "<C-w>j", "Window Down" },
  ["<C-k>"] = { "<C-w>k", "Window Up" },
  ["<C-l>"] = { "<C-w>l", "Window Right" },
  ["<C-t>"] = { ":tabnew<CR>", "New Tab" },
  ["<C-w>"] = { ":bd!<CR>", "Close Buffer" },
  -- Additional mappings for Harpoon files 2-9
  -- Add more non-leader keybindings here
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)

-- Insert mode mappings ('i' for insert)
wk.register({
  ["jj"] = { "<Esc>", "Escape" }
}, { mode = "i" })


