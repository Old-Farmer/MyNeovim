return {
  {
    "neovim/nvim-lspconfig",
    -- opts = function()
    --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
    --   -- disable a keymap
    --   keys[#keys + 1] = { "K", false }
    -- end,
  },
  {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    opts = {
      autoEnableHints = false,
    },
    cond = false,
  },
}
