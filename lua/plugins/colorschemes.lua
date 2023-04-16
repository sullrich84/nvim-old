return {
  "LazyVim/LazyVim",
  dependencies = {
    { "rebelot/kanagawa.nvim", name = "kanagawa", lazy = false, priority = 1000 },
    { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
    { "EdenEast/nightfox.nvim", name = "nightfox", lazy = false, priority = 1000 },
    { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  },
  opts = {
    colorscheme = "nightfly",
  },
}
