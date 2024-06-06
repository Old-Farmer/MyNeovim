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
  desc = "set indentation for some ft",
})

-- disable spell for markdown, and show hidden
-- ref https://github.com/LazyVim/LazyVim/discussions/1470
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.spell = false
    vim.opt_local.conceallevel = 0
  end,
  desc = "disable spell for markdown, and show hidden",
})

-- -- Terminal
-- local terminal = vim.api.nvim_create_augroup("MyTerminal", { clear = true })
-- -- Switch to insert mode when open/enter terminal
-- vim.api.nvim_create_autocmd("TermOpen", {
--   pattern = "*",
--   command = "startinsert",
--   group = terminal,
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "term://*",
--   command = "startinsert",
--   group = terminal,
-- })

-- -- inlay hint disable in insert
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   callback = function(args)
--     local filter = { bufnr = args.buf }
--     -- if the inlay hints are currently enabled
--     if vim.lsp.inlay_hint.is_enabled(filter) then
--       -- disable the inlay hints
--       vim.lsp.inlay_hint.enable(false, filter)
--       -- create a single use autocommand to turn the inlay hints back on
--       -- when leaving insert mode
--       vim.api.nvim_create_autocmd("InsertLeave", {
--         buffer = args.buf,
--         once = true,
--         callback = function()
--           vim.lsp.inlay_hint.enable(true, filter)
--         end,
--       })
--     end
--   end,
--   desc = "disable inlay hints on insert",
-- })
