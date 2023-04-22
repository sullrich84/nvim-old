return {
  "neovim/nvim-lspconfig",
  ---@class PnuginLspOpts
  opts = {
    servers = {
      bashls = {},      -- bash-language-server
      pylsp = {},       -- python-lsp-server
      tsserver = {},    -- typescript-langugage-server
      eslint = {},      -- eslint-lsp   ◍
      html = {},        -- html-lsp
      jsonls = {},      -- json-lsp jsonls
      lua_ls = {},      -- lua-language-server
      tailwindcss = {}, -- tailwindcss-language-server
      vimls = {},       -- vim-language-server
    },
  },
}
