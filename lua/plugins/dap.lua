return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      require("dap.ext.vscode").load_launchjs(".nvim/launch.json", { codelldb = { "c", "cpp" } })
    end,
  },
}
