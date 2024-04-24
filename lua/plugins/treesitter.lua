return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufEnter",
    enabled = false,
    config = function()
      require("rainbow-delimiters.setup").setup({
        highlight = {
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
        },
      })
    end,
  },
}
