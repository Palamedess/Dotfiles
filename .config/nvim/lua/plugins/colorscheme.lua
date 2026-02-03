return {
  {
    "https://github.com/casedami/neomodern.nvim",
    config = function()
      local colors = require("neomodern.palette.roseprime").spec
      require("neomodern").setup({
        bg = "alt",
        theme = "roseprime",
        overrides = {
          hlgroups = {
            ["WinSeparator"] = { guifg = colors.comment },
            ["NormalFloat"] = { guibg = colors.bg },
            ["FloatBorder"] = { guibg = colors.bg, guifg = colors.visual },
            ["FzfLuaBorder"] = { guibg = colors.bg, guifg = colors.comment },
          },
        },
      })
      require("neomodern").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "neomodern",
    },
  },
}
