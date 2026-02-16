return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      css = { "prettierd" },
      c = { "clangd" },
      cpp = { "clangd" },
    },
  },
}
