local function custom_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directiry"))
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    on_attach = custom_on_attach,
    view = {
      width = 40,
    },
    renderer = {
      special_files = {},
      root_folder_label = function(path)
        return " " .. vim.fn.fnamemodify(path, ":t")
      end,
      highlight_git = true,
      highlight_diagnostics = true,
      icons = {
        git_placement = "after",
        symlink_arrow = "   ",
        show = {
          git = false,
          diagnostics = false,
        },
        glyphs = {
          folder = {
            default = "",
            open = "",
            empty = "",
            empty_open = "",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      severity = {
        min = vim.diagnostic.severity.ERROR,
      },
    },
    filters = {
      enable = true,
      git_ignored = false,
      custom = { "^.git$" },
    },
    ui = {
      confirm = {
        default_yes = true,
      },
    },
  },
}
