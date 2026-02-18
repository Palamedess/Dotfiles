return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local custom = require("lualine.themes.auto")
    local colors = require("neomodern.palette.roseprime").spec

    custom.normal = {
      a = { bg = "#191919" },
      b = { bg = "#121212", fg = colors.comment },
      c = { bg = "#191919", fg = colors.comment },
      y = { bg = "#121212", fg = colors.comment },
    }

    opts.options = {
      theme = custom,
      section_separators = { left = "", right = "" },
      component_separators = "",
      globalstatus = vim.o.laststatus == 3,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
    }
    opts.sections.lualine_z = {}
  end,
}
