local icons = require("icons")

return {
  "SmiteshP/nvim-navbuddy",
  event = "BufReadPost",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
    "numToStr/Comment.nvim",
  },
  keys = {
    { "<leader>cn", "<cmd>Navbuddy<cr>", desc = "Toggle Navbuddy" },
    { "<F8>",       "<cmd>Navbuddy<cr>", desc = "Toggle Navbuddy" },
  },
  config = function()
    local actions = require("nvim-navbuddy.actions")
    local navbuddy = require("nvim-navbuddy")
    navbuddy.setup({
      window = {
        border = "rounded",
      },
      icons = icons,
      mappings = {
        ["<Down>"] = actions.next_sibling,
        ["<Up>"] = actions.previous_sibling,
        ["<Left>"] = actions.parent,
        ["<Right>"] = actions.children,
        ["h"] = actions.insert_name,
        ["<enter>"] = actions.select,
        ["q"] = actions.close,
      },
      lsp = { auto_attach = true },
    })
  end,
}
