-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("config.cmds") -- commands here

local map = vim.keymap.set
local mapdel = vim.keymap.del

-- Window
map("n", "<leader>ws", "<C-W>s", { desc = "Split Window", remap = true })
map("n", "<leader>wv", "<C-W>v", { desc = "Split Window Vertically", remap = true })
mapdel("n", "<leader>w-")
mapdel("n", "<leader>w|")
mapdel("n", "<leader>-")
mapdel("n", "<leader>|")

-- Buffer
mapdel("n", "<leader>`")
mapdel("n", "[b")
mapdel("n", "]b")
