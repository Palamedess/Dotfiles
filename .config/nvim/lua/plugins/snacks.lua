math.randomseed(os.time())
local headers = {
  [[
          ⣀⣀⡀⢿⣿⡆⣿⣿⣿⣦⡀ ⣀⣀⡀
 ⣰⣶⣄     ⡾⠁⣀⠙⠸⣿⡇⡟⣋⣩⣴⣶⣶⣶⣍⢿⣷⣄
 ⠈⠙⠻⢷⡄  ⢠⣝⡀⠤⣴⣧⣭⠄⡞⠛⠻⣭⣭⣭⡛⢿⢸⣿⣿⡆
     ⠑⠄  ⠙⠻⣿⣶⣶⣶⢸⠄⠒⠄⢸⣿⣿⣷⡌⡼⣿⣿⣧
⣿⣿⣿⣿⣷⣶⣤⣀⢠⣴⡾⢟⡻⢿⣿⣷⢄⣐⠶⠿⠿⠛⣛⣃⣴⣿⣿⡿
⠿⠛⠉⠉⢉⣉⡉⢭⣥⣿⣧⡘⣿⣮⣻⣿⣶⣮⣭⣍⣋⣭⣭⣴⣿⣿⣟⣱⣿
  ⢀⣴⣿⠟ ⠘⣿⡿⢛⣣⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
  ⠘⠻⠋   ⠘⢇⣛⣛⣛⣩⣽⣿⣿⣿⣿⣿⣿⠋⣿⣿⣿⣿⣿⣿⣿
         ⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⡿⢏⣾⣿⣿⣿⣿⣿⣿⣿
        ⣀⣤⣶⣶⣝⠻⢿⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⠿
     ⢀⣤⣾⣿⣿⣿⣿⣿⣿⣶⣬⣝⣛⡛⠿⠿⠿⠿⠿⢟⣛⣩⣤⣄ ]],
  [[
       ⣠⣴⣶⣿⣿⡿⠶⠄⠄⠄⠄⠐⠒⠒⠲⠶⢄     
     ⣠⣾⡿⠟⠋⠁ ⢀⣀⡀⠤⣦⢰⣤⣶⢶⣤⣤⣈⣆    
    ⢰⠟⠁ ⢀⣤⣶⣿⡿⠿⣿⣿⣊⡘⠲⣶⣷⣶⠶⠶⠶⠦⠤⡀ 
 ⠔⠊⠁⠁  ⢾⡿⣟⡯⣖⠯⠽⠿⠛⠛⠭⠽⠊⣲⣬⠽⠟⠛⠛⠭⢵⣂
⡎       ⢙⡷⠋⣴⡆⠄⠐⠂⢸⣿⣿⡶⢱⣶⡇ ⠐⠂⢹⣷⣶
⡇    ⣀⣀⡀ ⣿⡓⠮⣅⣀⣀⣐⣈⣭⠤⢖⣮⣭⣥⣀⣤⣤⣭⡵⠂
⣤⡀⢠⣾⣿⣿⣿⣿⣷⢻⣿⣿⣶⣶⡶⢖⣢⣴⣿⣿⣟⣛⠿⠿⠟⣛⠉  
⣿⡗⣼⣿⣿⣿⣿⡿⢋⡘⠿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀ 
⣿⠱⢿⣿⣿⠿⢛⠰⣞⡛⠷⣬⣙⡛⠻⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠛⣓⡀
⢡⣾⣷⢠⣶⣿⣿⣷⣌⡛⠷⣦⣍⣛⠻⠿⢿⣶⣶⣶⣦⣤⣴⣶⡶⠾⠿⠟⠁
⣿⡟⣡⣿⣿⣿⣿⣿⣿⣿⣷⣦⣭⣙⡛⠓⠒⠶⠶⠶⠶⠶⠶⠶⠶⠿⠟  ]],
  [[

     ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆         
    ⢛⣛⣛⣛⣛⣛⣛⣛⣛⡛⢋⣉⣭⣭⣥⣬⣤⣤⣀       
  ⣴⣵⣿⣟⡉⣥⣶⣶⠶⠶⠬⣉⡂⠹⣟⡫⠽⠟⢒⣒⠒⠆      
 ⣼⣿⣿⣿⣿⣿⣶⣭⣃⡈⠄⠄⠘⠃⡰⢶⣶⣿⠏⠄⠄⠙⡛⠄     
⢰⣿⣿⣿⣿⣿⣿⣿⣯⣉⣉⣩⣭⣶⣿⡿⠶⠶⠶⠶⠶⠾⣋⠄      
⢾⣿⣿⣿⣿⣿⣿⣿⢩⣶⣒⠒⠶⢖⣒⣚⡛⠭⠭⠭⠍⠉⠁   ⣀⣀⡀ 
⠘⢿⣿⣿⣿⣿⣿⣿⣧⣬⣭⣭⣭⣤⡤⠤⠶⠟⣋⣀⣀⡀⢀⣤⣾⠟⠋⠈⢳⠄
⣴⣦⡒⠬⠭⣭⣭⣭⣙⣛⠋⠭⡍⠁⠈⠙⠛⠛⠛⠛⢻⠛⠉⢻⠁   ⢸⡀
⣿⣿⣿⣿⣷⣦⣤⠤⢬⢍⣼⣦⡾⠛      ⠈⡇ ⢸   ⢦⣄⣇
⣿⣿⡿⣋⣭⣭⣶⣿⣶⣿⣿⣿⠟⠛⠃     ⢠⠃ ⡜   ⠔⣿⣿]],
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      enabled = true,
      actions = {
        delete_projects = function(picker, _)
          Snacks.picker.actions.close(picker)
          local items = picker:selected({ fallback = true })
          vim.defer_fn(function()
            vim.cmd("edit " .. vim.fn.stdpath("state") .. "/shada/main.shada")
            for _, item in ipairs(items) do
              local regex = "^\\S\\(\\n\\s\\|[^\\n]\\)\\{-}"
                .. vim.fn.escape(item.file, "/\\")
                .. "\\_.\\{-}\\n*\\ze\\(^\\S\\|\\%$\\)"
              vim.cmd("%s/" .. regex .. "//g")
            end
            vim.cmd("write!")
            vim.cmd("rshada!")
            vim.cmd("bwipeout!")
            Snacks.picker.projects()
          end, 100)
        end,
      },
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        files = {
          hidden = true,
          ignored = true,
        },
        projects = {
          dev = { "~/Projects" },
          patterns = { ".clangd", ".clang-tidy" },
          win = {
            input = {
              keys = {
                ["<C-x>"] = { "delete_projects", mode = { "n", "i" } },
              },
            },
          },
        },
      },
    },
    dashboard = {
      width = 40,
      pane_gap = 2,
      preset = {
        header = headers[math.random(#headers)],
      },
      sections = {
        { section = "header", padding = 2 },
        { section = "keys", gap = 0, padding = 2 },
        { section = "startup" },
      },
    },
  },
}
