return {
  {
    "Old-Farmer/im-autoswitch.nvim",
    -- dir = "~/projects/im-autoswitch.nvim",
    event = "VeryLazy",
    opts = {
      cmd = {
        default_im = "1",
        get_im_cmd = "fcitx5-remote",
        switch_im_cmd = "fcitx5-remote -t",
      },
    },
  },
}
