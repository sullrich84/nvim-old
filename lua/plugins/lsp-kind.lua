return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "onsails/lspkind.nvim",
    init = function()
      require("lspkind").init({
        symbol_map = {
          Text = " ",
          Method = " ",
          Function = " ",
          Constructor = " ",
          Field = " ",
          Variable = "󰫧 ",
          Class = " ",
          Interface = " ",
          Module = " ",
          Property = "󰓼 ",
          Unit = "塞 ",
          Value = " ",
          Enum = "練 ",
          Keyword = " ",
          Snippet = " ",
          Color = " ",
          File = " ",
          Reference = " ",
          Folder = " ",
          EnumMember = " ",
          Constant = " ",
          Struct = " ",
          Event = " ",
          Operator = " ",
          TypeParameter = " ",
        },
      })
    end,
  },
}
