-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable lsp autoformat
vim.g.autoformat = false

-- -- Show fold sign when open
-- vim.g.lazyvim_statuscolumn = {
--   folds_open = true,
--   folds_gihubhl = true,
-- }

-- -- Choose fzf
-- vim.g.lazyvim_picker = "fzf"

vim.g.cmp_widths = {
  abbr = 999,
  menu = 999,
}

local opt = vim.opt

opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait1-blinkoff600-blinkon600-Cursor/lCursor,sm:block-blinkwait1-blinkoff600-blinkon600"
opt.shiftwidth = 4
opt.scrolloff = 8
-- opt.shortmess:remove("I") -- Show welcome again because I diable dashboard-nvim
opt.tabstop = 4

-- termdebug
vim.g.termdebug_config = {
  wide = 1,
}

-- neovide
if vim.g.neovide then
  vim.o.guifont = "JetbrainsMono Nerd Font:h14"
  vim.g.neovide_transparency = 0.98
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_right = 5
  vim.g.neovide_padding_left = 5
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_trail_size = 0.4
end
