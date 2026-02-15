return {
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
}
