local bufferline_theme = require("darcula-dark.bufferline")
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      indicator = {
        style = "underline",
      },
      left_trunc_marker = "",
      right_trunc_marker = "",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = nil,
      separator_style = "thin",
      offsets = {
        {
          filetype = "NvimTree",
        },
      },
    },
    highlights = bufferline_theme,
  },
}
