require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- a better normal mode 
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")
map("i", "kk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Better indenting
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Keep cursor centered when scrolling
-- map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
-- map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
-- map("n", "n", "nzzzv", { desc = "Next search result centered" })
-- map("n", "N", "Nzzzv", { desc = "Previous search result centered" })
