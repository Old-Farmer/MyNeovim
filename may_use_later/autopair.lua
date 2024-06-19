return {
  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)
      local npairs = require("nvim-autopairs")
      local rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      npairs.add_rules({
        rule("<", ">")
          -- not effective with "[%w.]>" , may be bugs
          :with_pair(cond.not_after_regex("[^%s]")),
      })
    end,
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
}
