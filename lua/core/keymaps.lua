-- Set leader key
vim.g.mapleader = " "

--buffers
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
vim.keymap.set("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>bv", "<CMD>vnew<CR>", { desc = "New Vertical buffer" })
vim.keymap.set("n", "<leader>bt", "<CMD>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>bh", "<CMD>new<CR>", { desc = "New Vertical buffer" })
vim.keymap.set("n", "<S-h>", "<CMD>bprev<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<S-l>", "<CMD>bnext<CR>", { desc = "Delete current buffer" })

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

--Lazy
vim.keymap.set("n", "<leader>ll", "<CMD>Lazy<CR>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>lu", "<CMD>Lazy update<CR>", { desc = "Lazy update" })
vim.keymap.set("n", "<leader>li", "<CMD>Lazy install<CR>", { desc = "Lazy install" })

vim.keymap.set("n", "<C-q>", "<CMD>quit<CR>", { desc = "quit" })

-- Oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--Diagnostics
-- Show diagnostic in a floating window (line details)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, { desc = "LSP hover information" })

-- Jump to previous diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

-- Jump to next diagnostic
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

-- Set location list/quickfix with buffer diagnostics
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic location list" })
