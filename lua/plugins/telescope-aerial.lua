return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "stevearc/aerial.nvim",
    opts = {
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      layout = {
        min_width = 28,
        placement = "edge"
      },
      show_guides = false,
      filter_kind = false,
      guides = {
        mid_item = " ",
        last_item = " ",
        nested_top = " ",
        whitespace = " ",
      },
      keymaps = {
        ["[y"] = "actions.prev",
        ["]y"] = "actions.next",
        ["[Y"] = "actions.prev_up",
        ["]Y"] = "actions.next_up",
        ["{"] = false,
        ["}"] = false,
        ["[["] = false,
        ["]]"] = false,
      },
    },
    keys = {
      { "<leader>cS", "<cmd>AerialToggle<cr>", desc = "Toggle symbols outline" },
      { "<F10>",      "<cmd>AerialToggle<cr>", desc = "Toggle symbols outline" },
    },
  },
}
