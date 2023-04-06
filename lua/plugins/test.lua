return {
  "vim-test/vim-test",
  dependencies = {
    "folke/which-key.nvim",
  },
  lazy = false,
  dependencies = {
    "folke/which-key.nvim",
    "akinsho/toggleterm.nvim",
  },
  keys = function()
    if pcall(require, "which-key") then
      require("which-key").register({
        t = {
          name = "Tests",
          n = { "<cmd>TestNearest -strategy=toggleterm<cr>", "Run nearest test" },
          f = { "<cmd>TestFile -strategy=toggleterm<cr>", "Run test file" },
          l = { "<cmd>TestLast -strategy=toggleterm<cr>", "Rerun latest test" },
          v = { "<cmd>TestVisit -strategy=toggleterm<cr>", "Visit test file" },
        },
      }, { prefix = "<leader>c" })
    end
  end,
}
