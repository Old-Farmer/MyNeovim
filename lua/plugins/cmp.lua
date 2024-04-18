return {
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
    -- disable annoying cursor jump
    -- ref https://github.com/LazyVim/LazyVim/discussions/1985
    opts = {
      history = false,
    },
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
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
      --

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

      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" })

      opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" })
    end,
  },
}
