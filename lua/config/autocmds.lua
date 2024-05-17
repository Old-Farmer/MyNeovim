-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local my_lib = require("my_lib")

-- Indentation for FileType
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "cmake", "markdown" },
  callback = function()
    my_lib.set_indentation("local", "spaces", 2)
  end,
})

-- disable spell for markdown, and show hidden
-- ref https://github.com/LazyVim/LazyVim/discussions/1470
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.spell = false
    vim.opt_local.conceallevel = 0
  end,
})
