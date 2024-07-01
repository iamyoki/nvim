-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "v" }, "<C-y>", '"+y', { desc = "Yank into sys clipboard" })
map({ "n", "v" }, "<C-d>", '"+d', { desc = "Delete into sys clipboard" })
map({ "n", "v" }, "<C-x>", '"+cc', { desc = "Cut into sys clipboard" })
