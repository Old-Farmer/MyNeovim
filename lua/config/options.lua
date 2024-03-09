-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local my_lib = require("my_lib")

-- Disable lsp autoformat
vim.g.autoformat = false

local opt = vim.opt

opt.scrolloff = 8
my_lib.set_indentation("", "spaces", 4)

-- User commands
local command = vim.api.nvim_create_user_command

-- Set pwd to Current file dir
command("CdCurrentFileDir", "cd %:p:h", {})
