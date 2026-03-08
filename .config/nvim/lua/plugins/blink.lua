return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      trigger = { show_in_snippet = false },
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },
    keymap = {
      preset = "enter",
      -- I want to use tab to cycle selections instead of C-p and C-n
      -- Swap tab/S-tb and C-p/C-n
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-p>"] = { "snippet_backward", "fallback_to_mappings" },
      ["<C-n>"] = { "snippet_forward", "fallback_to_mappings" },
      -- Add back this keybind from LazyVim default config
      ["<C-y>"] = { "select_and_accept" },
    },
  },
}
