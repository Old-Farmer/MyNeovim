return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bc", "<Cmd>BufferLinePick<CR>", desc = "Choose(Pick) a Buffer" },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- local len = #opts.sections.lualine_c
      -- opts.sections.lualine_c[len - 1] = { Util.lualine.pretty_path({ modified_sign = "[󰐕]" }) }
      opts.sections.lualine_z = {
        function()
          return " " .. os.date("%I:%M %p")
        end,
      }
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
              ███╗   ███╗██╗   ██╗  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗        
              ████╗ ████║╚██╗ ██╔╝  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║        
              ██╔████╔██║ ╚████╔╝   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║        
              ██║╚██╔╝██║  ╚██╔╝    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║        
              ██║ ╚═╝ ██║   ██║     ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║        
              ╚═╝     ╚═╝   ╚═╝     ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝        
                                                        A  IDE Based on LazyVim/LazyVim      
    ]]
      logo = string.rep("\n", 6) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      -- cmdline = {
      --   view = "cmdline",
      -- },
      -- messages = {
      --   enabled = false,
      -- },
      -- lsp = {
      --   signature = {
      --     auto_open = {
      --       enabled = false,
      --     },
      --   },
      -- },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  -- goto-preview
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    -- config = true,
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
        desc = "goto preview type definition",
      },
      {
        "<leader>pr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        noremap = true,
        desc = "goto preview references",
      },
      {
        "<leader>P",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        noremap = true,
        desc = "close all preview windows",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>p"] = { name = "+goto-preview" },
      },
    },
  },
}
