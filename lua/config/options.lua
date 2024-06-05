-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable lsp autoformat
vim.g.autoformat = false

local opt = vim.opt

opt.guicursor:append("a:blinkon500-blinkoff500") -- cursor blinking
opt.shiftwidth = 4
opt.scrolloff = 8
-- opt.shortmess:remove("I") -- Show welcome again because I diable dashboard-nvim
opt.tabstop = 4

-- termdebug
vim.g.termdebug_config = {}
vim.g.termdebug_config.wide = 1
