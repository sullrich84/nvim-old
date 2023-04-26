return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_x = {},
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
  },
}
