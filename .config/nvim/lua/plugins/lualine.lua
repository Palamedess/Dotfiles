return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local colors = require("neomodern.palette.roseprime").spec
    local custom = require("lualine.themes.auto")
    custom.normal.a = { bg = "#788cc2", fg = "#161719", gui = "bold" }

    opts.options = {
      theme = custom,
      section_separators = { left = "", right = "" },
      component_separators = "",
    }
  end,
}
