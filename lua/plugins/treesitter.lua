return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "bash",
      "regex",
      "markdown",
      "markdown_inline",
      "typescript",
      "lua",
      "vim",
    })
  end,
}
