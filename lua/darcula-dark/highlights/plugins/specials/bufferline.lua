local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")
local not_selected = "#C1C3C6"

-- Colours must be load before bufferline loading
hi(0, "TabLineSel", { bg = palette.interface.active_element })

-- Errros
hi(0, "BufferLineError", {
  fg = not_selected,
  bg = palette.editor.background,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
hi(0, "BufferLineErrorVisible", {
  fg = not_selected,
  bg = palette.editor.background,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
hi(0, "BufferLineErrorSelected", {
  fg = palette.interface.foreground,
  bg = palette.editor.background,
  sp = palette.editor.diagnostic.error,
  undercurl = true,
})
-- Disable all diagnostics highlighting exept error
-- Warnings
hi(0, "BufferLineHideDiagnosticHinst", {
  fg = not_selected,
  bg = palette.editor.background,
  sp = palette.editor.separator,
  underline = true,
})
hi(0, "BufferLineWarning", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineWarningVisible", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineWarningSelected", { link = "BufferLineHideDiagnosticHinst" })
-- Hint
hi(0, "BufferLineHint", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineHintVisible", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineHintSelected", { link = "BufferLineHideDiagnosticHinst" })
-- Info
hi(0, "BufferLineInfo", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineInfoVisible", { link = "BufferLineHideDiagnosticHinst" })
hi(0, "BufferLineInfoSelected", { link = "BufferLineHideDiagnosticHinst" })

return {
  -- empty space after buffers
  fill = {
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- buffers
  background = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  buffer_visible = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  buffer_selected = {
    fg = palette.interface.foreground,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
    bold = false,
    italic = false,
  },
  -- separator among buffers
  separator = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  separator_visible = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  separator_selected = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- selected bufer
  indicator_visible = {
    fg = palette.interface.active_element,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  indicator_selected = {
    fg = palette.interface.active_element,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- number of hidden buffers (left/right arrows)
  trunc_marker = {
    fg = palette.icon,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- buffer close button
  close_button = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  close_button_visible = {
    fg = palette.hint_text,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  close_button_selected = {
    fg = palette.hint_text,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- modified file indicator
  modified = {
    fg = palette.file_manager.vcs.modified_file,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  modified_visible = {
    fg = palette.file_manager.vcs.modified_file,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  modified_selected = {
    fg = palette.file_manager.vcs.modified_file,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- duplicated filenames in different folders
  duplicate = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
    italic = false,
  },
  duplicate_selected = {
    fg = palette.interface.foreground,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
    italic = false,
  },
  duplicate_visible = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
    italic = false,
  },
  -- tabs
  tab = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  tab_selected = {
    fg = palette.interface.foreground,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  tab_separator = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  tab_separator_selected = {
    fg = palette.editor.background,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
  -- buffer close button
  tab_close = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.separator,
    underline = true,
  },
}
