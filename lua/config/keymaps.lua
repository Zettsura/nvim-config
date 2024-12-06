-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- local wk = require("which-key")
-- wk.register({
--   o = {
--     name = "Obsidian",
--     n = { ":ObsidianNew ", "New" },
--     f = { "<cmd>ObsidianQuickSwitch<cr>", "Quick Switch" },
--     s = { "<cmd>ObsidianSearch<cr>", "Search" },
--     o = { "<cmd>ObsidianOpen<cr>", "Open" },
--     t = { "<cmd>ObsidianToday<cr>", "Today" },
--     y = { "<cmd>ObsidianYesterday<cr>", "Yesterday" },
--     l = { "<cmd>ObsidianLinkNew<cr>", "New Link" },
--   },
-- }, { prefix = "<leader>" })

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.del("n", "<C-/>")
vim.keymap.del("n", "<C-_>")

-- Delete existing keymaps
vim.keymap.del("n", "<leader>e")
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

local opts = { silent = true, remap = true }
vim.keymap.set("o", "<C-/>", "gc", opts)
vim.keymap.set("x", "<C-/>", "gc", opts)
vim.keymap.set("v", "<C-/>", "gc", opts)
vim.keymap.set("n", "<C-/>", "gcc", opts)
vim.keymap.set("o", "<C-_>", "gc", opts)
vim.keymap.set("x", "<C-_>", "gc", opts)
vim.keymap.set("v", "<C-_>", "gc", opts)
vim.keymap.set("n", "<C-_>", "gcc", opts)
vim.keymap.set("n", "<leader>e", "<cmd>Neotree reveal<cr>", opts)

vim.api.nvim_set_keymap("t", "<esc><esc>", "<c-\\><c-n>", { noremap = true })
vim.api.nvim_set_keymap("i", "<M-CR>", "<esc>A;", { noremap = true })
