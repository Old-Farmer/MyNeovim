return {
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.dap.nlua" },
  {
    "rcarriga/nvim-dap-ui",
    optional = true,
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
        -- Don't close ui when finishing
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    -- opts = function()
    --   vim.api.nvim_create_autocmd("FileType", {
    --     pattern = "dap-repl",
    --     callback = function()
    --       require("dap.ext.autocompl").attach()
    --     end,
    --   })
    -- end,
    -- stylua: ignore
    keys = {
      { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
      { "<leader>dO", false },
      { "<leader>dn", function() require("dap").step_over() end, desc = "Next" },
      { "<leader>dd", function() require("dap").clear_breakpoints() end, desc = "Delete Breakpoints" },
      { "<leader>dL", function() require("dap").list_breakpoints() end, desc = "List Breakpoints" },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "rcarriga/cmp-dap",
    },
    opts = function(_, opts)
      require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
        sources = {
          { name = "dap" },
        },
      })
      opts.enabled = function()
        local buftype = nil
        if vim.api.nvim_get_option_value then
          buftype = vim.api.nvim_get_option_value("buftype", { buf = 0 })
        else
          buftype = vim.api.nvim_buf_get_option(0, "buftype")
        end
        return buftype ~= "prompt" or require("cmp_dap").is_dap_buffer()
      end
    end,
  },
}
