-- User commands
local command = vim.api.nvim_create_user_command

-- Set pwd to Current file dir
command("CdCurrentFileDir", "cd %:p:h", {})

local my_lib = require("my_lib")

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
