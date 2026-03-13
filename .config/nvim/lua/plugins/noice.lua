return {
  "folke/noice.nvim",
  opts = {
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
    },
    cmdline = {
      view = "cmdline",
      border = {
        style = "none",
        padding = { 2, 3 },
      },
      format = {
        cmdline = { icon = " 󰞷" },
      },
    },
  },
}
