return {
  {
    "stevearc/oil.nvim",
    enabled = false,
    cmd = "Oil",
    keys = {
      {
        "<leader>fo",
        function()
          require("oil").open_float(vim.uv.cwd())
        end,
        desc = "Oil (Floating cwd)",
      },
      {
        "<leader>fO",
        function()
          require("oil").open_float(nil)
        end,
        desc = "Oil (Floating Buffer Parent Dir)",
      },
    },
    opts = {
      default_file_explorer = false,
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
