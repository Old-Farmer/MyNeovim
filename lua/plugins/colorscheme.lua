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
    lazy = true,
    priority = 1000,
    dim_inactive = {
      enabled = true,
    },
    name = "catppuccin",
    -- opts = {
    --   flavour = "latte", -- latte, frappe, macchiato, mocha
    --   background = { -- :h background
    --     light = "latte",
    --     dark = "frappe",
    --   },
    -- },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
