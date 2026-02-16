return {
  {
    "rasulomaroff/cursor.nvim",
    event = "VeryLazy",
    config = {
      overwrite_cursors = true,
      cursors = {
        {
          mode = "n-v-c",
          shape = "block",
          hl = "Cursor",
        },
        {
          mode = "i",
          shape = "block",
          hl = "iCursor",
          blink = { wait = 0, default = 100 },
        },
      },
    },
  },
  {
    "tummetott/reticle.nvim",
    event = "VeryLazy",
    opts = {
      ignore = {
        cursorline = {
          "DressingInput",
          "FTerm",
          "NvimSeparator",
          "NvimTree",
          "TelescopePrompt",
          "Trouble",
          "snacks_dashboard",
        },
        cursorcolumn = {},
      },
    },
  },
}
