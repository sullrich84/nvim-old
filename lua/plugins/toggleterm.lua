return {
  "akinsho/toggleterm.nvim",
  -- config = function()
  --   require("toggleterm").setup({
  --     direction = "vertical",
  --   })
  -- end,
  opts = {
    size = vim.o.columns * 0.4,
    direction = "vertical",
  },
  keys = {
    { "<F9>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal (vertical)" },
  },
}
