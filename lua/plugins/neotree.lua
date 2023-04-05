return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
      },
      modified = {
        symbol = "",
        highlight = "NeoTreeModified",
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "",
          modified = "",
          deleted = "",
          renamed = "",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "󱐋",
        },
      },
    },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = true,
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          ".DS_Store",
          "thumbs.db",
        },
        hide_by_name = {
          "node_modules",
          ".git",
        },
      },
    },
    window = {
      mappings = {
        ["<space>"] = "none",
      },
    },
  },
  keys = {
    { "<leader>we", "<cmd>Neotree<cr>", desc = "Focus file browser" },
  },
}
