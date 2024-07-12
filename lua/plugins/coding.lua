return {
  { import = "lazyvim.plugins.extras.coding.mini-surround" },
  { import = "lazyvim.plugins.extras.coding.luasnip" }, -- Due to the lack of native snippet functionality Use Lua snip instead now
  -- cmp & snippets
  -- disable friendly-snippets because not good
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  -- LuaSnip extra has disabled it already
  -- { "garymjr/nvim-snippets", opts = { friendly_snippets = false }, enabled = false },
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    optional = true,
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
    keys = {},
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

      -- opts.formatting = {
      --   format = function(_, item)
      --     local icons = require("lazyvim.config").icons.kinds
      --     if icons[item.kind] then
      --       item.kind = icons[item.kind]
      --     end
      --     return item
      --   end,
      -- }

      -- Disable auto open docs
      opts.view = {
        docs = { auto_open = false },
      }

      -- Disable ghost text
      opts.experimental.ghost_text = false

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- Toggle docs view
        ["<C-g>"] = cmp.mapping(function()
          if cmp.visible_docs() then
            cmp.close_docs()
          else
            cmp.open_docs()
          end
        end, "i"),
        -- tab move
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
