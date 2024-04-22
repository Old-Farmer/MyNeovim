return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      require("dap.ext.vscode").load_launchjs(".vscode/launch.json", { codelldb = { "c", "cpp", "rust" } })
    end,
  },
}
