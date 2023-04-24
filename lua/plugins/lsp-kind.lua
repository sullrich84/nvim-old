local icons = require("icons")

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "onsails/lspkind.nvim",
    init = function()
      require("lspkind").init({
        symbol_map = icons,
      })
    end,
  },
}
