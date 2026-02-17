return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = {
      "bash-language-server",
      "clangd",
      "codelldb",
      "shellcheck",
      "stylua",
      "shfmt",
      "lua-language-server",
    }
  end,
}
