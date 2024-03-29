return {
  -- C/C++
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          opts.root_dir = function(fname)
            return require("lspconfig.util").find_git_ancestor(fname)
              or require("lspconfig.util").root_pattern(".clangd", ".clang-tidy", ".clang-format")(fname)
              or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(fname)
              or require("lspconfig.util").root_pattern(
                "Makefile",
                "configure.ac",
                "configure.in",
                "config.h.in",
                "meson.build",
                "meson_options.txt",
                "build.ninja"
              )(fname)
          end
          opts.cmd = {
            "clangd",
            "--header-insertion=never",
            "--query-driver=/usr/bin/cc,/usr/bin/c++,/usr/bin/gcc,/usr/bin/g++,/usr/bin/gcc-12,/usr/bin/g++-12,/usr/bin/gcc-13,/usr/bin/g++-13,/usr/bin/clang,/usr/bin/clang++",
            "--pretty",
            "--log=info",
            -- "--completion-style=detailed",
            "--background-index",
            "--clang-tidy",
          }
        end,
      },
    },
  },
  -- CMake
  {
    "Civitasv/cmake-tools.nvim",
    enabled = false,
  },
}
