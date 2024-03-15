local my_lib = {}

-- ref by https://gist.github.com/LunarLambda/4c444238fb364509b72cfb891979f1dd
function my_lib.set_indentation(scope, style, n)
  local opt = vim.opt
  if scope == "global" then
    opt = vim.opt_global
  elseif scope == "local" then
    opt = vim.opt_local
  end

  if style == "tab" then
    opt.expandtab = false
    opt.tabstop = n
    opt.shiftwidth = 0
    opt.softtabstop = 0
    opt.smarttab = true
  elseif style == "spaces" then
    opt.expandtab = true
    opt.tabstop = n
    opt.shiftwidth = n
    opt.softtabstop = -1
    opt.smarttab = true
  else -- mixed
    vim.cmd [[ set tabstop& ]]
    opt.expandtab = false
    opt.shiftwidth = n
    opt.softtabstop = -1
    opt.smarttab = true
  end
end

return my_lib
