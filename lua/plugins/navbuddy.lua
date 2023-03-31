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
    { "<leader>cn", "<cmd>Navbuddy<cr>", desc = "Toggle Navbuddy" },
    { "<F8>", "<cmd>Navbuddy<cr>", desc = "Toggle Navbuddy" },
  },
  config = function()
    local actions = require("nvim-navbuddy.actions")
    local navbuddy = require("nvim-navbuddy")
    navbuddy.setup({
      window = {
        border = "rounded",
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
    })
  end,
}
