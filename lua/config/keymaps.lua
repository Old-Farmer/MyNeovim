-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("config.cmds") -- commands here

local map = vim.keymap.set
local mapdel = vim.keymap.del

-- File
mapdel("n", "<leader>fn")

-- Window
mapdel("n", "<leader>-")
mapdel("n", "<leader>|")

-- Buffer
mapdel("n", "<leader>`")

-- Tab
mapdel("n", "<leader><tab>l")
mapdel("n", "<leader><tab>f")
mapdel("n", "<leader><tab><tab>")
mapdel("n", "<leader><tab>]")
mapdel("n", "<leader><tab>[")
mapdel("n", "<leader><tab>d")
mapdel("n", "<leader><tab>o")

-- Terminal
mapdel("n", "<leader>ft")
mapdel("n", "<leader>fT")
map("n", "<leader>tl", function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "LazyVim Terminal (Root Dir)" })
map("n", "<leader>tL", function()
  LazyVim.terminal()
end, { desc = "LazyVim Terminal (cwd)" })
