local pylsp = {
  settings = {
    pyright = {},
    pylsp = {
      plugins = {
        autopep8 = { enabled = false },
        yapf = { enabled = true },
        black = { enabed = false },
        pycodestyle = { enabled = false },
      },
    },
  },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      bashls = {},      -- bash-language-server
      -- pylsp = pylsp,    -- python-lsp-server
      pyright = {},     -- microsoft python lsp
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
