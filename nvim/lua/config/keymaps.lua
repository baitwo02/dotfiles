-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i" }, "jk", "<esc>", { desc = "Escape" })

map({ "n", "v", "x" }, "gh", "^", { desc = "Escape" })
map({ "n" }, "gl", "$", { desc = "Escape" })
map({ "v", "x" }, "gl", "$h", { desc = "Escape" })
