return {
  -- {
  --   "h-hg/fcitx.nvim",
  --   -- event = "VeryLazy",
  -- },
  -- {
  --   "keaising/im-select.nvim",
  --   config = function()
  --     require("im_select").setup({})
  --   end,
  -- },
  {
    "Old-Farmer/im-autoswitch.nvim",
    event = "BufEnter",
    opts = {
      default_im = "1",
      get_im_cmd = "fcitx5-remote",
      switch_im_cmd = "fcitx5-remote -t",
    },
  },
}
