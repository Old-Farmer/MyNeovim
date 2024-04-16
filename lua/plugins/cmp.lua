return {
  {
    "L3MON4D3/LuaSnip",
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
    -- -- disable luasnip tab behavior
    -- keys = function()
    --   return {}
    -- end,
    -- -- https://github.com/LazyVim/LazyVim/discussions/2781
    -- keys = function()
    --   -- stylua: ignore
    --   return {
    --     { "<C-j>", function() return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>" end,
    --       expr = true,
    --       silent = true,
    --       mode = "i",
    --     },
    --     { "<C-j>", function() require("luasnip").jump(1) end, mode = "s", },
    --     { "<C-k>", function() require("luasnip").jump(-1) end, mode = { "i", "s" }, },
    --   }
    -- end,
    --
    -- -- disable annoying cursor jump
    -- -- ref https://github.com/LazyVim/LazyVim/discussions/1985
    -- opts = {
    --   history = true,
    --   region_check_events = "InsertEnter",
    --   delete_check_events = "TextChanged",
    -- },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local has_words_before = function()
  --       unpack = unpack or table.unpack
  --       local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  --       return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  --     end
  --
  --     local luasnip = require("luasnip")
  --     local cmp = require("cmp")
  --
  --     -- -- Don't preselect ,ref https://github.com/hrsh7th/nvim-cmp/discussions/1411
  --     -- opts.preselect = cmp.PreselectMode.None -- need to be set for some cmp plugins
  --     -- opts.completion = {
  --     --   completeopt = "menu,menuone,preview,noinsert,noselect", -- noselect is necessary
  --     -- }
  --
  --     -- Toggle docs view
  --     opts.mapping["<C-g>"] = cmp.mapping(function()
  --       if cmp.visible_docs() then
  --         cmp.close_docs()
  --       else
  --         cmp.open_docs()
  --       end
  --     end, { "i", "s" })
  --
  --     -- -- Border settng
  --     -- opts.window = {
  --     --   completion = cmp.config.window.bordered(),
  --     --   documentation = cmp.config.window.bordered(),
  --     -- }
  --     --
  --
  --     opts.mapping = vim.tbl_extend("force", opts.mapping, {
  --       -- Supertab
  --       ["<Tab>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
  --           cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
  --           -- cmp.confirm({ select = true })
  --           -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
  --           -- this way you will only jump inside the snippet region
  --         elseif luasnip.expand_or_locally_jumpable() then
  --           luasnip.expand_or_jump()
  --         elseif has_words_before() then
  --           cmp.complete()
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --       ["<S-Tab>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
  --         elseif luasnip.jumpable(-1) then
  --           luasnip.jump(-1)
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --     })
  --   end,
  -- },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

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
