return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufEnter",
    enabled = false,
    config = function()
      require("rainbow-delimiters.setup").setup({
        highlight = {
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
        },
      })
    end,
  },
}
