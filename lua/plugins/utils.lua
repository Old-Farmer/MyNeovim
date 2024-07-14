return {
  -- Bookmarks
  {
    "LintaoAmons/bookmarks.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    },
    event = "VeryLazy",
    version = "v0.5.4",
    keys = {
      {
        "<leader>mm",
        "<cmd>BookmarksMark<cr>",
        desc = "Mark current line into active BookmarkList",
        mode = { "n", "v" },
      },
      {
        "<leader>mg",
        "<cmd>BookmarksGoto<cr>",
        desc = "Go to bookmark at current active BookmarkList",
        mode = { "n", "v" },
      },
      { "<leader>mc", "<cmd>BookmarksCommands<cr>", desc = "Find and trigger a bookmark command", mode = { "n", "v" } },
      {
        "<leader>mr",
        "<cmd>BookmarksGotoRecent<cr>",
        desc = "Go to recent visited/created Bookmark",
        mode = { "n", "v" },
      },
    },
    opts = {
      json_db_path = vim.fs.normalize(vim.fn.stdpath("data") .. "/bookmarks.db.json"), -- Store in data path
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>m", group = "+book[m]ark" },
      },
    },
  },
}
