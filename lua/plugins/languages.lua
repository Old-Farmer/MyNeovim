return {
  -- C/C++
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = function(_, opts)
      local clangd = opts.servers.clangd
      local lspconfig_util = require("lspconfig.util")
      clangd.root_dir = function(fname)
        return lspconfig_util.root_pattern(".clangd", ".clang-tidy", ".clang-format")(fname)
          or lspconfig_util.root_pattern("compile_commands.json", "compile_flags.txt")(fname)
          or lspconfig_util.root_pattern(
            "Makefile",
            "configure.ac",
            "configure.in",
            "config.h.in",
            "meson.build",
            "meson_options.txt",
            "build.ninja"
          )(fname)
          or lspconfig_util.find_git_ancestor(fname)
      end
      clangd.cmd = {
        "clangd",
        "--header-insertion=never",
        "--query-driver=/usr/bin/cc,/usr/bin/c++,/usr/bin/gcc*,/usr/bin/g++*,/usr/bin/clang*,/usr/bin/clang++*",
        "--pretty",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
        "--fallback-style=google",
      }
    end,
  },

  -- CMake
  {
    "Civitasv/cmake-tools.nvim",
    optional = true,
    enabled = false,
  },

  -- markdown
  -- -- not ensure_installed markdown treesitter, just as ref, not use
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.ensure_installed = vim.tbl_filter(function(i)
  --       return not vim.tbl_contains({ i }, "markdown")
  --     end, opts.ensure_installed)
  --   end,
  -- },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD013", "--" },
        },
      },
    },
  },
  {
    "lukas-reineke/headlines.nvim",
    optional = true,
    enabled = false,
  },

  -- Rust
  -- {
  --   "mrcjkb/rustaceanvim",
  --   optional = true,
  --   opts = {
  --     default_settings = {
  --       ["rust-analyzer"] = {
  --         diagnostics = {
  --           experimental = {
  --             enable = true,
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
