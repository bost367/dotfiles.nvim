local palette = require("darcula-dark.palette")
local hi = vim.api.nvim_set_hl

hi(0, "LuaLineDiffAdd", { fg = palette.file_manager.vcs.added_file })
hi(0, "LuaLineDiffChange", { fg = palette.file_manager.vcs.changed_file })
hi(0, "LuaLineDiffDelete", { fg = palette.file_manager.vcs.deleted_file })

return {
  normal = {
    a = { bg = palette.interface.active_element, fg = palette.interface.text, gui = "bold" },
    b = { bg = palette.interface.cursor_line, fg = palette.interface.text },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
  insert = {
    a = { bg = "#5C962C", fg = palette.interface.text, gui = "bold" },
    b = { bg = "#375239", fg = palette.interface.text },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
  visual = {
    a = { bg = "#A68A0D", fg = palette.interface.black, gui = "bold" },
    b = { bg = "#5C4F17", fg = palette.interface.text },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
  replace = {
    a = { bg = "#DB5C5C", fg = palette.interface.text, gui = "bold" },
    b = { bg = "#5E3838", fg = palette.interface.text },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
  command = {
    a = { bg = "#D6AE58", fg = palette.interface.black, gui = "bold" },
    b = { bg = "#5E4D33", fg = palette.interface.text },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
  inactive = {
    a = { bg = palette.interface.icursor_line_inactive, fg = palette.interface.lightgray, gui = "bold" },
    b = { bg = palette.interface.icursor_line_inactive, fg = palette.interface.lightgray },
    c = { bg = palette.interface.background, fg = palette.interface.text },
  },
}
