return {
  {
    "Old-Farmer/im-autoswitch.nvim",
    dev = false,
    event = "BufEnter",
    opts = {
      cmd_os = {
        linux = {
          default_im = "1",
          get_im_cmd = "fcitx5-remote",
          switch_im_cmd = "fcitx5-remote -t",
        },
      },
      mode = {
        terminal = false,
      },
    },
  },
}
