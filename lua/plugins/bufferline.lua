return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      indicator = {
        style = "icon",
      },
      buffer_close_icon = "󰅖",
      close_icon = "󰅖",
      left_trunc_marker = "",
      right_trunc_marker = "",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = nil,
      offsets = {
        {
          filetype = "NvimTree",
          separator = false,
        },
        {
          filetype = "DiffviewFiles",
          separator = false,
        },
      },
    },
    highlights = require("darcula-dark.highlights.plugins.specials.bufferline"),
  },
}
