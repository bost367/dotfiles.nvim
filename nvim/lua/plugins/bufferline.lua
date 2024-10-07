local bufferline_theme = require("darcula-dark.bufferline")
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      indicator = {
        style = "none",
      },
      left_trunc_marker = "",
      right_trunc_marker = "",
      separator_style = "slant",
    },
    highlights = bufferline_theme,
  },
}
