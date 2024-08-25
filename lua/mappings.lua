require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- local nomap = vim.keymap.del

-- nomap("n", "<C-h>")
-- nomap("n", "<C-j>")
-- nomap("n", "<C-k>")
-- nomap("n", "<C-l>")

map("n", "<leader>fk", "<cmd> Telescope keymaps <cr>")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft <cr>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown <cr>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp <cr>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight <cr>")
map("n", "<C-\\>", "<cmd> TmuxNavigatePrevious <cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
