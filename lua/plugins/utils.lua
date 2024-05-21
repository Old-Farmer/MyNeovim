return {
  -- Bookmarks
  {
    "LintaoAmons/bookmarks.nvim",
    dependencies = {
      { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
    },
    event = "VeryLazy",
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
      defaults = {
        ["<leader>m"] = { name = "+bookmark" },
      },
    },
  },
}
