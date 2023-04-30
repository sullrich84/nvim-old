local logo = [[
             ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣤⣴⡶⠖⢀⣀⣤⣤⣤⣀
             ⠀⠀⠀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⠛⣡⣴⣾⣿⣿⣿⣿⣿⣿⣷⡀
             ⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
             ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢻⣿⣿⣿⣿⠟⣉⠻⣿⣶⣿⡄
             ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⢿⣿⣿⣿⡀⠻⣷⣌⠙⢿⣧
             ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡙⠻⠿⠁⠀⠈⠙⠳⢄⡉
             ⠸⢸⣿⣿⣿⣿⣿⡿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⢀⣀⠀⠀⠀⣤⣈
             ⠀⠘⣿⣿⣿⣿⠋⠐⠿⠿⠿⠿⢃⠘⣿⣿⣿⣿⠀⢰⣿⡟⠀⠀⣰⣿⡟
             ⠀⠀⣿⣿⣿⣿⠀⣿⣿⡆⠀⠀⣾⠀⣿⣿⣿⣿⠀⠈⠻⣿⣿⣿⣿⡿⠁
             ⠀⠀⣿⣿⣿⣿⠀⣿⣿⣷⠀⠀⣿⡆⢸⣿⣿⣿⠀⠀⠀⠀⠉⠉⠁
             ⠀⠀⠛⠿⠿⠃⠀⠻⠿⠋⠀⠀⠻⠇⠘⠿⠿⠟⠀sully.vim
┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
]]

return {
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    opts = {
      theme = "hyper",
      config = {
        header = {
          "",
          "",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣤⣴⡶⠖⢀⣀⣤⣤⣤⣀      ",
          " ⠀⠀⠀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⠛⣡⣴⣾⣿⣿⣿⣿⣿⣿⣷⡀   ",
          " ⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧   ",
          " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢻⣿⣿⣿⣿⠟⣉⠻⣿⣶⣿⡄  ",
          " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⢿⣿⣿⣿⡀⠻⣷⣌⠙⢿⣧  ",
          " ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡙⠻⠿⠁⠀⠈⠙⠳⢄⡉  ",
          " ⠸⢸⣿⣿⣿⣿⣿⡿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⢀⣀⠀⠀⠀⣤⣈  ",
          " ⠀⠘⣿⣿⣿⣿⠋⠐⠿⠿⠿⠿⢃⠘⣿⣿⣿⣿⠀⢰⣿⡟⠀⠀⣰⣿⡟  ",
          " ⠀⠀⣿⣿⣿⣿⠀⣿⣿⡆⠀⠀⣾⠀⣿⣿⣿⣿⠀⠈⠻⣿⣿⣿⣿⡿⠁  ",
          " ⠀⠀⣿⣿⣿⣿⠀⣿⣿⣷⠀⠀⣿⡆⢸⣿⣿⣿⠀⠀⠀⠀⠉⠉⠁    ",
          " ⠀⠀⠛⠿⠿⠃⠀⠻⠿⠋⠀⠀⠻⠇⠘⠿⠿⠟⠀sully.vim ",
          "",
        },
        week_header = {
          enable = false,
        },
        shortcut = {
          { icon = " ",  desc = "Projects", group = "@label",   action = "Telescope project",    key = "p", },
          { icon = " ",  desc = "Recent",   group = "@label",   action = "Telescope old_files",  key = "r", },
          { icon = " ",  desc = "Grep",     group = "Number",   action = "Telescope live_grep",  key = "g", },
          { icon = "󰍉 ", desc = "Find",     group = "Number",   action = "Telescope find_files", key = "f", },
          { icon = " ",  desc = "Config",   group = "@comment", action = "e $MYVIMRC",           key = "c", },
          { icon = " ",  desc = "Update",   group = "@comment", action = "Lazy update",          key = "u" },
          { icon = "󰛯 ", desc = "Health",   group = "@comment", action = "checkhealth",          key = "h", },
          { icon = "󰩈 ", desc = "Quit",     group = "@error",   action = "qa",                   key = "q", },
        },
      },
    },
    dependencies = {
      { "nvim-tree/nvim-web-devicons" }
    }
  }
}

-- return {
--   {
--     "goolord/alpha-nvim",
--     opts = function()
--       local dashboard = require("alpha.themes.dashboard")
--
--       -- HEADER
--       dashboard.section.header.opts.hl = "Keyword"
--
--       -- BUTTONS
--       dashboard.section.header.val = vim.split(logo, "\n")
--       dashboard.section.buttons.val = {
--         dashboard.button("p", " " .. " Projects", ":Telescope project <CR>"),
--         dashboard.button("r", " " .. " Recent Files", ":Telescope oldfiles <CR>"),
--         dashboard.button("g", " " .. " Live Grep", ":Telescope live_grep <CR>"),
--         dashboard.button("f", "󰍉 " .. " Find File", ":Telescope find_files <CR>"),
--         dashboard.button("s", " " .. " Session: Restore Session", [[:lua require("persistence").load() <cr>]]),
--         dashboard.button("c", " " .. " init.lua", ":e $MYVIMRC <CR>"),
--         dashboard.button("l", " " .. " Lazy", ":Lazy<CR>"),
--         dashboard.button("h", " " .. " Check Health", ":checkhealth<CR>"),
--         dashboard.button("q", " " .. " Quit", ":qa<CR>"),
--       }
--       dashboard.section.buttons.opts.hl = "AlphaButtons"
--       for _, button in ipairs(dashboard.section.buttons.val) do
--         button.opts.hl = "AlphaButtons"
--         button.opts.hl_shortcut = "AlphaShortcut"
--       end
--
--       dashboard.section.footer.opts.hl = "Type"
--       dashboard.opts.layout[1].val = 3
--
--       return dashboard
--     end,
--   }
-- }
-- }
