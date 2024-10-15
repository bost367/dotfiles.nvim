return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    {
      "<Bslash>xx",
      "<cmd>Trouble diagnostics_all toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<Bslash>xX",
      "<cmd>Trouble diagnostics_current_buf toggle<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
  },
  opts = {
    focus = true,
    pinned = false,
    warn_no_results = false,
    open_no_results = true,
    indent_guides = false,
    multiline = false,
    icons = {
      folder_closed = "",
      folder_open = "",
    },
    modes = {
      diagnostics_all = {
        desc = "diagnostics from all files",
        mode = "diagnostics",
        groups = {
          { "filename", format = "{file_icon} {basename} {hl:Directory}{dirname}{hl} {count}" },
        },
        format = "{severity_icon} {message:md} {pos}",
        filter = {},
      },
      diagnostics_current_buf = {
        desc = "diagnostics from current buffer",
        mode = "diagnostics",
        groups = {
          { "filename", format = "{file_icon} {basename} {hl:Directory}{dirname}{hl} {count}" },
        },
        format = "{severity_icon} {message:md} {code} {pos}",
        filter = { buf = 0 },
      },
    },
  },
}
