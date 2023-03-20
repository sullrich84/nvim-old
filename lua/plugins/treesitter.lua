return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
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
