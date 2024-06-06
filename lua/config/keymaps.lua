-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("config.cmds") -- commands here

local map = vim.keymap.set
local mapdel = vim.keymap.del

-- Window
mapdel("n", "<leader>w-")
mapdel("n", "<leader>w|")
mapdel("n", "<leader>-")
mapdel("n", "<leader>|")
map("n", "<leader>ws", "<C-W>s", { desc = "Split Window", remap = true })
map("n", "<leader>wv", "<C-W>v", { desc = "Split Window Vertically", remap = true })

-- Buffer
mapdel("n", "<leader>`")
map("n", "<leader>r", "<leader>bd", { desc = "Remove(Delete) Buffer", remap = true })
-- map("t", "<A-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer(terminal)" })
-- map("t", "<A-l>", "<cmd>bnext<cr>", { desc = "Next Buffer(terminal)" })

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
map("n", "<leader>tf", function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
map("n", "<leader>tF", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
