return {
  "vim-test/vim-test",
  dependencies = {
    "folke/which-key.nvim",
  },
  lazy = false,
  keys = function()
    local wk = require("which-key")
    wk.register({
      t = {
        name = "Tests",
        n = { "<cmd>TestNearest<cr>", "Run nearest test" },
        f = { "<cmd>TestFile<cr>", "Run test file" },
        l = { "<cmd>TestLast<cr>", "Rerun latest test" },
        v = { "<cmd>TestVisit<cr>", "Visit test file" },
      },
    }, { prefix = "<leader>c" })
  end,
}
