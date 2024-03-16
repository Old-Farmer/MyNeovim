return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bc", "<Cmd>BufferlinePick<CR>", desc = "Choose(Pick) a Buffer" },
    },
    -- opts = {
    --   options = {
    --     always_show_bufferline = true,
    --   },
    -- },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            return " " .. os.date("%I:%M %p")
          end,
        },
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
              ███╗   ███╗██╗   ██╗  ███╗   ██╗ ██████╗ ███████╗██╗   ██╗██╗███╗   ███╗        
              ████╗ ████║╚██╗ ██╔╝  ████╗  ██║██╔═══██╗██╔════╝██║   ██║██║████╗ ████║        
              ██╔████╔██║ ╚████╔╝   ██╔██╗ ██║██║   ██║█████╗  ██║   ██║██║██╔████╔██║        
              ██║╚██╔╝██║  ╚██╔╝    ██║╚██╗██║██║   ██║██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║        
              ██║ ╚═╝ ██║   ██║     ██║ ╚████║╚██████╔╝███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║        
              ╚═╝     ╚═╝   ╚═╝     ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝        
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
