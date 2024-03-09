-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local mapdel = vim.keymap.del

map({ "i", "n" }, "<C-;>", "<End>", { noremap = true, desc = "Line end" })
map("i", "<C-S-;>", "<End>;", { noremap = true, desc = "Append ; to line end" })
-- map("i", "<C-S-k>", "<C-k><C-k>i<BS>", { desc = "Close signature help" }) -- don't know why need bs
