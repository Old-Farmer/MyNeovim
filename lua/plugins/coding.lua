return {
  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {
      enable_bracket_in_quote = false,
    },
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  -- cmp & snippets
  -- disable friendly-snippets because not good
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    -- dependencies = {
    --   {
    --     "rafamadriz/friendly-snippets",
    --     -- Set user snippets loc
    --     config = function()
    --       require("luasnip.loaders.from_vscode").lazy_load({
    --         default_priority = 2000, -- Make user-defined snippets high priority
    --       })
    --       -- require("luasnip.loaders.from_vscode").load_standalone({
    --       --   paths = { "~/.config/nvim/my_snippets" },
    --       --   -- default_priority = 2000, -- Make user-defined snippets high priority
    --       -- })
    --     end,
    --   },
    -- },
    keys = {},
    opts = function(_, opts)
      -- Set user snippets loc, default is nvim config path
      require("luasnip.loaders.from_vscode").lazy_load()

      -- disable annoying cursor jump
      -- ref https://github.com/LazyVim/LazyVim/discussions/1985
      opts.history = false
      opts.region_check_events = "InsertEnter"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local luasnip = require("luasnip")
      local cmp = require("cmp")

      -- -- Don't preselect ,ref https://github.com/hrsh7th/nvim-cmp/discussions/1411
      -- opts.preselect = cmp.PreselectMode.None -- need to be set for some cmp plugins
      -- opts.completion = {
      --   completeopt = "menu,menuone,preview,noinsert,noselect", -- noselect is necessary
      -- }

      -- -- Border settng
      -- opts.window = {
      --   completion = cmp.config.window.bordered(),
      --   documentation = cmp.config.window.bordered(),
      -- }

      -- Disable ghost text
      opts.experimental.ghost_text = false

      -- Toggle docs view
      opts.mapping["<C-g>"] = cmp.mapping(function()
        if cmp.visible_docs() then
          cmp.close_docs()
        else
          cmp.open_docs()
        end
      end, { "i", "s" })

      opts.mapping["<C-n>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" })

      opts.mapping["<C-p>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" })

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          elseif luasnip.locally_jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
