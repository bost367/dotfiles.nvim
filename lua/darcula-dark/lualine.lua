local palette = require("darcula-dark.palette")
local hi = vim.api.nvim_set_hl
local grey_text = "#9B9DA5"

hi(0, "LuaLineDiffAdd", { fg = palette.file_manager.vcs.added_file })
hi(0, "LuaLineDiffChange", { fg = palette.file_manager.vcs.changed_file })
hi(0, "LuaLineDiffDelete", { fg = palette.file_manager.vcs.deleted_file })

return {
  normal = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
  insert = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
  visual = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
  replace = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
  command = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
  inactive = {
    a = { bg = palette.interface.background, fg = grey_text },
    b = { bg = palette.interface.background, fg = grey_text },
    c = { bg = palette.interface.background, fg = grey_text },
  },
}
