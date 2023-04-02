-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local Menu = require("nui.menu")
local Text = require("nui.text")
local Line = require("nui.line")

function ToggleNpmRun()
  local menu_width = 40
  local menu_height = 10
  local menu_max_height = 15
  local menu_title = " npm run "

  local menu_keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "q", "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" },
  }

  local function build_item(content, command)
    local item_normal = Text(content)
    local item_comment = Text(string.format(" (%s)", command), "Comment")
    return Menu.item(Line({ item_normal, item_comment }), { value = command })
  end

  local menu_items = {
    build_item("start", "ng start"),
    build_item("build", "ng build"),
    build_item("test", "ng test"),
  }

  local menu = Menu({
    position = "50%",
    size = { width = menu_width, height = menu_height, max_height = menu_max_height },
    border = { style = "rounded", text = { top = menu_title } },
    win_options = { winhighlight = "Normal:Normal,FloatBorder:Normal" },
  }, {
    lines = menu_items,
    keymap = menu_keymap,
    on_submit = function(item)
      print("Menu Submitted:", item.value)
    end,
  })

  menu:mount()
end
