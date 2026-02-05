return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local custom = require("lualine.themes.auto")
    custom.normal.a = { bg = "#788cc2", fg = "#161719", gui = "bold" }

    opts.options = {
      theme = custom,
      section_separators = { left = "", right = "" },
      component_separators = "",
      globalstatus = vim.o.laststatus == 3,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
    }
    opts.sections.lualine_z = {}
  end,
}
