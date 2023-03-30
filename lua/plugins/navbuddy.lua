return {
  "SmiteshP/nvim-navbuddy",
  lazy = false,
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
    "numToStr/Comment.nvim",
  },
  keys = {
    { "<leader>cv", "<cmd>Navbuddy<cr>", desc = "Toggle Navbuddy" },
  },
  config = function()
    local actions = require("nvim-navbuddy.actions")
    local navbuddy = require("nvim-navbuddy")
    navbuddy.setup({
      window = {
        border = "rounded",
      },
      icons = {
        File = " ",
        Module = " ",
        Namespace = " ",
        Package = " ",
        Class = " ",
        Method = " ",
        Property = " ",
        Field = " ",
        Constructor = " ",
        Enum = "練",
        Interface = "練",
        Function = " ",
        Variable = " ",
        Constant = " ",
        String = " ",
        Number = " ",
        Boolean = "◩ ",
        Array = " ",
        Object = " ",
        Key = " ",
        Null = "ﳠ ",
        EnumMember = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
      },
      mappings = {
        ["<Down>"] = actions.next_sibling,
        ["<Up>"] = actions.previous_sibling,
        ["<Left>"] = actions.parent,
        ["<Right>"] = actions.children,
        ["h"] = actions.insert_name,
        ["<enter>"] = actions.select,
      },
      lsp = { auto_attach = true },
      source_buffer = {
        follow_node = true, -- Keep the current node in focus on the source buffer
        highlight = true, -- Highlight the currently focused node
      },
    })
  end,
}
