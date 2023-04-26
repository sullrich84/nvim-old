return {
  "vim-test/vim-test",
  event = "BufReadPost",
  dependencies = {
    "folke/which-key.nvim",
    "akinsho/toggleterm.nvim",
  },
  keys = function()
    if pcall(require, "which-key") then
      require("which-key").register({
        t = {
          name = "Tests",
          n = { "<cmd>TestNearest -strategy=kitty<cr>", "Run nearest test" },
          f = { "<cmd>TestFile -strategy=kitty<cr>", "Run test file" },
          l = { "<cmd>TestLast -strategy=kitty<cr>", "Rerun latest test" },
          v = { "<cmd>TestVisit -strategy=kitty<cr>", "Visit test file" },
        },
      }, { prefix = "<leader>c" })
    end
  end,
}
