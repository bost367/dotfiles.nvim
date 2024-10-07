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
          "filename",
          symbols = { modified = "●", readonly = "" },
        },
        {
          "diff",
          symbols = { added = " ", modified = " ", removed = " " },
        },
      },
      lualine_x = {
        {
          "diagnostics",
          sections = { "error", "hint", "warn", "info" },
          symbols = { error = " ", warn = " ", info = " ", hint = " " },
        },
        "encoding",
        "fileformat",
        "filetype",
      },
    },
  },
}
