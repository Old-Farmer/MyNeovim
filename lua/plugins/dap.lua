return {
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
    opts = function ()
      vim.cmd("au FileType dap-repl lua require('dap.ext.autocompl').attach()")
    end,
    -- stylua: ignore
    keys = {
      { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
      { "<leader>dO", false },
      { "<leader>dn", function() require("dap").step_over() end, desc = "Next" },
      { "<leader>dd", function() require("dap").clear_breakpoints() end, desc = "Delete Breakpoints" },
      { "<leader>dL", function() require("dap").list_breakpoints() end, desc = "List Breakpoints" },
    },
  },
}
