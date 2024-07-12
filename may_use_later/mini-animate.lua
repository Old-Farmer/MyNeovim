return {
  "echasnovski/mini.animate",
  optional = true,
  cond = not vim.g.neovide,
  opts = {
    cursor = {
      timing = require("mini.animate").gen_timing.linear({ duration = 75, unit = "total" }),
    },
    scroll = {
      timing = require("mini.animate").gen_timing.linear({ duration = 100, unit = "total" }),
    },
  },
}
