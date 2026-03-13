return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      qml = { "qmlformat" },
      lua = { "stylua" },
      sh = { "shfmt" },
      css = { "prettierd" },
      c = { "clangd" },
      cpp = { "clangd" },
    },
  },
}
