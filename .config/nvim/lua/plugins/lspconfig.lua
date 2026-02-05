return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = {
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--enable-config",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            format = {
              enabled = false,
            },
          },
        },
      },
    }
  end,
}
