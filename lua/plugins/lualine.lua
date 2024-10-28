-- Status bar
return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    sections = {
      lualine_b = {
        { "branch", icon = " ", draw_empty = true },
      },
      lualine_c = {
        {
          "diff",
          symbols = { added = "● ", modified = "● ", removed = "● " },
        },
      },
      lualine_x = {
        {
          "diagnostics",
          sections = { "error", "warn", "hint", "info" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
        },
        "encoding",
        "fileformat",
        "filetype",
      },
    },
  },
}
