return {
  -- goto-preview
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    opts = {},
    keys = {
      {
        "<leader>pd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        noremap = true,
        desc = "goto preview definition",
      },
      {
        "<leader>pD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        noremap = true,
        desc = "goto preview declaration",
      },
      {
        "<leader>pi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        noremap = true,
        desc = "goto preview implementation",
      },
      {
        "<leader>py",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        noremap = true,
        desc = "goto preview t[y]pe definition",
      },
      {
        "<leader>pr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        noremap = true,
        desc = "goto preview references",
      },
      {
        "<leader>pc",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        noremap = true,
        desc = "close all preview windows",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>p", group = "goto-preview" },
        { "<leader><tab>", hidden = true }, -- as del tab maps
        { "<leader>t", group = "terminal" },
      },
      modes = {
        t = false,
      },
      icons = {
        rules = false, -- disable icons now because some keymaps cannot show icons automatically
      },
    },
  },

  -- telescope
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     { "<leader>,", false },
  --     {
  --       "<leader>bs",
  --       "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
  --       desc = "Switch Buffer(Telescope)",
  --     },
  --   },
  -- },

  -- terminal
  {
    "akinsho/toggleterm.nvim",
    cmd = {
      "ToggleTerm",
      "ToggleTermToggleAll",
      "TermExec",
      "TermSelect",
      "ToggleTermSetName",
    },
    keys = {
      {
        "<leader>ta",
        "<cmd>ToggleTermToggleAll<cr>",
        desc = "ToggleTerm Toggle All",
      },
      {
        "<leader>tf",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, LazyVim.root(), "float")
        end,
        desc = "ToggleTerm (Float Root Dir)",
      },
      {
        "<leader>tF",
        function()
          require("toggleterm").toggle(vim.count1, nil, vim.uv.cwd(), "float")
        end,
        desc = "ToggleTerm (Float cwd)",
      },
      {
        "<leader>th",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, LazyVim.root(), "horizontal")
        end,
        desc = "ToggleTerm (Horizontal Root Dir)",
      },
      {
        "<leader>tH",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, vim.uv.cwd(), "horizontal")
        end,
        desc = "ToggleTerm (Horizontal cwd)",
      },
      {
        "<leader>tv",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, LazyVim.root(), "vertical")
        end,
        desc = "ToggleTerm (Vertical Root Dir)",
      },
      {
        "<leader>tV",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, vim.uv.cwd(), "vertical")
        end,
        desc = "ToggleTerm (Vertical cwd)",
      },
      {
        "<leader>tt",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, LazyVim.root(), "tab")
        end,
        desc = "ToggleTerm (Tab Root Dir)",
      },
      {
        "<leader>tT",
        function()
          require("toggleterm").toggle(vim.v.count1, nil, vim.uv.cwd(), "tab")
        end,
        desc = "ToggleTerm (Tab cwd)",
      },
      { "<C-\\>" },
      {
        "<leader>tn",
        "<cmd>ToggleTermSetName<cr>",
        desc = "Set Term Name",
      },
      {
        "<leader>ts",
        "<cmd>TermSelect<cr>",
        desc = "Select Term",
      },
    },
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 12
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]],
      start_in_insert = false,
    },
  },

  -- undo visualizer
  {
    "mbbill/undotree",
    keys = {
      {
        "<leader>su",
        "<cmd>UndotreeToggle<cr>",
        desc = "Undo History",
      },
    },
    config = function()
      vim.g.undotree_WindowLayout = 2
    end,
  },

  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- keys = {
    --   { "<leader>fe", false },
    --   { "<leader>fE", false },
    -- },
    opts = {
      window = {
        width = 30,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          -- hide_hidden = false,
          -- hide_dotfiles = false,
          -- hide_gitignored = true,
        },
      },
    },
  },
}
