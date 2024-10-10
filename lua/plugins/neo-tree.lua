return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
      },
      indent = {
        with_markers = false,
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
      },
      modified = {
        symbol = "●",
      },
      file_size = {
        enabled = false,
      },
      type = {
        enabled = false,
      },
      last_modified = {
        enabled = false,
      },
      created = {
        enabled = false,
      },
      symlink_target = {
        enabled = false,
      },
      git_status = {
        symbols = {
          added = "",
          deleted = "",
          modified = "",
          renamed = "",
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
      diagnostics = {
        symbols = {
          hint = "",
          info = "",
        },
      },
    },
    window = {
      mappings = {
        -- disable sorting: it conflicts with next 'open' overriding
        ["oc"] = "noop",
        ["od"] = "noop",
        ["og"] = "noop",
        ["om"] = "noop",
        ["on"] = "noop",
        ["os"] = "noop",
        ["ot"] = "noop",
        ["o"] = "open",
        ["l"] = "toggle_node",
        ["h"] = "close_node",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          ".DS_Store",
          ".git",
        },
      },
    },
  },
}
