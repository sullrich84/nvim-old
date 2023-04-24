return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",
      delay = 0,
      ignore_whitespace = true,
    },
    current_line_blame = true,
    current_line_blame_formatter = "   <author>, <author_time:%Y-%m-%d>: <summary>",
  },
  keys = {
    { "<leader>ut", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle Gitsigns" },
  },
}
