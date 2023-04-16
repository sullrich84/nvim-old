return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = function()
    if pcall(require, "which-key") then
      require("which-key").register({
        h = {
          name = "Harpoon",
          h = {
            function()
              require("harpoon.ui").toggle_quick_menu()
            end,
            "Toggle quick menu",
          },
          a = {
            function()
              require("harpoon.mark").add_file()
              vim.notify("Entry added")
            end,
            "Add entry",
          },
          d = {
            function()
              require("harpoon.mark").rm_file()
              vim.notify("Entry removed")
            end,
            "Delete entry",
          },
        },
      }, { prefix = "<leader>" })
    end
  end,
}
