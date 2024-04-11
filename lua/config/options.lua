-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local my_lib = require("my_lib")

-- Disable lsp autoformat
vim.g.autoformat = false
-- Set python lsp
vim.g.lazyvim_python_lsp = "pyright"

local opt = vim.opt

opt.scrolloff = 8
my_lib.set_indentation("", "spaces", 4)

-- User commands
local command = vim.api.nvim_create_user_command

-- Set pwd to Current file dir
command("CdCurrentFileDir", "cd %:p:h", {})

-- Indentation cmds
command("TabIndent", function(opts)
  local n = 4
  if opts.nargs == 1 then
    n = opts.fargs[1]
  end
  my_lib.set_indentation("", "tab", n)
end, { nargs = "?" })
command("SpaceIndent", function(opts)
  local n = 4
  if opts.nargs == 1 then
    n = opts.fargs[1]
  end
  my_lib.set_indentation("", "spaces", n)
end, { nargs = "?" })
command("MixedIndent", function(opts)
  local n = 4
  if opts.nargs == 1 then
    n = opts.fargs[1]
  end
  my_lib.set_indentation("", "spaces", n)
end, { nargs = "?" })
