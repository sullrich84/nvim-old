local null_ls = require("null-ls")

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = {
    debug = false,
    sources = {
      -- Completion
      null_ls.builtins.completion.luasnip,
      -- null_ls.builtins.completion.codespell,
      -- Diagnostics
      null_ls.builtins.diagnostics.pycodestyle,
      -- Formatting
      null_ls.builtins.formatting.black,
    },
  },
}
