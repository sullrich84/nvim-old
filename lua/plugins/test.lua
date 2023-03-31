return {
  "vim-test/vim-test",
  lazy = false,
  keys = {
    { "<leader>ctn", "<cmd>TestNearest<cr>", desc = "Test nearest" },
    { "<leader>ctf", "<cmd>TestFile<cr>", desc = "Test file" },
    { "<leader>ctl", "<cmd>TestLast<cr>", desc = "Test last" },
  },
}
