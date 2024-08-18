vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("colorscheme tokyonight")
vim.cmd("set autochdir")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set numberwidth=4")
vim.cmd("set confirm")
vim.cmd("set shell=powershell")
vim.cmd("set shellcmdflag=-command")
vim.cmd(' set shellquote="')
vim.cmd("set shellxquote=")
vim.wo.signcolumn = "yes"

local keymap = vim.keymap.set

-- New File
keymap("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- Quit!
keymap("n", "mm", "<cmd>q!<cr>", { desc = "Quit!", silent = true })

-- Save file
keymap("n", "ss", "<cmd>w<cr>", { desc = "Save File", silent = true })

-- Quit insert mode
keymap("i", "jj", "<esc>", { desc = "Quit Insert Mode", silent = true, noremap = true })

-- Buffer
keymap("n", "<leader>bp", "<cmd>bprev<cr>", { desc = "Previous buffer" })
keymap("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Next delete" })

-- Clear search with <esc>
keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- UI
keymap("n", "<leader>ui", "<cmd>IBLToggle<cr>", { desc = "Toggle Indent Line" })
keymap("n", "<leader>uh", "<cmd>TSToggle highlight<cr>", { desc = "Toggle Treesitter Highlight" })
keymap("n", "<leader>uc", function()
  require("nvim-highlight-colors").toggle()
end, { desc = "Toggle highlight color" })

-- Terminal
keymap("t", "jj", [[<C-\><C-n>]], {})

-- Change between window
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
