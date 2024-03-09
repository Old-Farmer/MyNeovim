return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = {
      style = "night",
    },
  },
  {
    "catppuccin/nvim",
    priority = 1000,
    -- name = "catppuccin",
    -- opts = {
    --   flavour = "latte", -- latte, frappe, macchiato, mocha
    --   background = { -- :h background
    --     light = "latte",
    --     dark = "frappe",
    --   },
    -- },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    enabled = false,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    enabled = false,
    opts = {
      theme = "dragon",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      -- colorscheme = "rose-pine",
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight",
    },
  },
}
