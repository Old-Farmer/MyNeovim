-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable lsp autoformat
vim.g.autoformat = false
-- Set python lsp
vim.g.lazyvim_python_lsp = "pyright"

local opt = vim.opt

opt.scrolloff = 8
opt.tabstop = 4
opt.shiftwidth = 4

opt.guicursor:append("a:blinkon500-blinkoff500")

opt.shortmess:remove("I")
