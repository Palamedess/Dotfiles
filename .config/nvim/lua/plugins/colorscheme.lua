return {

  {
    "https://github.com/casedami/neomodern.nvim",
    lazy = false,
    config = function()
      require("neomodern").setup({
        bg = "alt",
        theme = "roseprime",
        overrides = {
          hlgroups = {
            ["WinSeparator"] = { guifg = "$comment" },
            ["NormalFloat"] = { guibg = "$bg" },
            ["FloatBorder"] = { guibg = "$bg", guifg = "$visual" },
          },
        },
      })
      require("neomodern").load()
    end,
  },
  {
    "cwebster2/color-overrides.nvim",
    config = function()
      local colors = require("neomodern.palette.roseprime").spec
      local utils = require("neomodern.util")
      local my_clear_colors = {}
      local my_colors = {
        FzfLuaBorder = { guibg = colors.bg, guifg = colors.comment },
        LazyNormal = { guibg = "#0c0c0d", guifg = colors.comment },
        LazyDimmed = { guibg = "#0c0c0d" },
        SnacksIndent = { guifg = colors.visual },
        SnacksIndentScope = { guifg = colors.comment },
        SnacksDashboardHeader = { guifg = utils.darken(utils.blend(colors.type, 0.8, colors.func), 0.25) },
        SnacksDashboardKey = { guifg = colors.comment },
        SnacksDashboardIcon = { guifg = colors.comment },
        SnacksDashboardDesc = { guifg = colors.comment },
        SnacksDashboardTitle = { guifg = colors.comment },
      }
      require("color-overrides").set_overrides(my_clear_colors, my_colors)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "neomodern",
    },
  },
}
