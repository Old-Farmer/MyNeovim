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
      table.insert(opts.sections.lualine_c, #opts.sections.lualine_c + 1, {
        function()
          if require("luasnip").locally_jumpable(1) then
            return "🚀"
          -- elseif require("luasnip").locally_jumpable(-1) then
          --   return "<<<🚀"
          else
            return ""
          end
        end,
      })
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
}
