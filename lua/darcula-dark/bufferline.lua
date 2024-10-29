local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

-- Disable all diagnostics highlighting exept error
-- Errros
hi(0, "BufferLineError", {
  fg = "#C1C3C6",
  bg = palette.interface.popup_window,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
hi(0, "BufferLineErrorVisible", {
  fg = "#C1C3C6",
  bg = palette.editor.background,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
hi(0, "BufferLineErrorSelected", {
  fg = palette.interface.text,
  bg = palette.editor.background,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
-- Warnings
hi(0, "BufferLineWarning", { fg = "#C1C3C6", bg = palette.interface.popup_window })
hi(0, "BufferLineWarningVisible", { fg = "#C1C3C6", bg = palette.editor.background })
hi(0, "BufferLineWarningSelected", { fg = palette.interface.text, bg = palette.editor.background })
-- Hint
hi(0, "BufferLineHint", { fg = "#C1C3C6", bg = palette.interface.popup_window })
hi(0, "BufferLineHintVisible", { fg = "#C1C3C6", bg = palette.editor.background })
hi(0, "BufferLineHintSelected", { fg = palette.interface.text, bg = palette.editor.background })
-- Info
hi(0, "BufferLineInfo", { fg = "#C1C3C6", bg = palette.interface.popup_window })
hi(0, "BufferLineInfoVisible", { fg = "#C1C3C6", bg = palette.editor.background })
hi(0, "BufferLineInfoSelected", { fg = palette.interface.text, bg = palette.editor.background })

return {
  fill = {
    bg = palette.interface.background,
  },
  background = {
    fg = "#C1C3C6",
    bg = palette.interface.popup_window,
  },
  tab = {
    fg = "#C1C3C6",
    bg = palette.interface.popup_window,
  },
  tab_selected = {
    fg = palette.interface.text,
    bg = palette.editor.background,
  },
  tab_separator = {
    fg = palette.interface.background,
    bg = palette.interface.popup_window,
  },
  tab_separator_selected = {
    fg = palette.interface.background,
    bg = palette.editor.background,
  },
  tab_close = {
    fg = "#C1C3C6",
    bg = palette.interface.background,
  },
  close_button = {
    fg = palette.interface.popup_window,
    bg = palette.interface.popup_window,
  },
  close_button_visible = {
    fg = palette.interface.hint_text,
    bg = palette.editor.background,
  },
  close_button_selected = {
    fg = palette.interface.hint_text,
    bg = palette.editor.background,
  },
  buffer_visible = {
    fg = palette.interface.text,
    bg = palette.editor.background,
  },
  buffer_selected = {
    fg = palette.interface.text,
    bg = palette.editor.background,
    bold = false,
    italic = false,
  },
  modified = {
    fg = palette.file_manager.vcs.changed_file,
    bg = palette.interface.popup_window,
  },
  modified_visible = {
    fg = palette.file_manager.vcs.changed_file,
    bg = palette.editor.background,
  },
  modified_selected = {
    fg = palette.file_manager.vcs.changed_file,
    bg = palette.editor.background,
  },
  separator = {
    fg = palette.interface.background,
    bg = palette.interface.popup_window,
  },
  separator_visible = {
    fg = palette.interface.background,
    bg = palette.editor.background,
  },
  separator_selected = {
    fg = palette.interface.background,
    bg = palette.editor.background,
  },
  duplicate_selected = {
    fg = palette.interface.text,
    bg = palette.editor.background,
    italic = false,
  },
  duplicate_visible = {
    fg = palette.interface.text,
    bg = palette.editor.background,
    italic = false,
  },
  duplicate = {
    fg = "#C1C3C6",
    bg = palette.interface.popup_window,
    italic = false,
  },
}
