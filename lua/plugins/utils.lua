return {
  {
    "dstein64/vim-startuptime",
    enabled = false,
  },
  -- Bookmarks
  {
    "LintaoAmons/bookmarks.nvim",
    dependencies = {
      { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
    },
    event = "BufEnter",
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
    },
  },
}
