local palette = require("darcula-dark.palette")

return {
  fill = {
    bg = palette.interface.background,
  },
  background = {
    fg = "#C1C3C6",
    bg = palette.interface.popup_window,
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
    fg = palette.interface.vcs.changed_file,
    bg = palette.interface.popup_window,
  },
  modified_visible = {
    fg = palette.interface.vcs.changed_file,
    bg = palette.editor.background,
  },
  modified_selected = {
    fg = palette.interface.vcs.changed_file,
    bg = palette.editor.background,
  },
  separator = {
    fg = palette.interface.background,
    bg = palette.interface.popup_window,
  },
  separator_visible = {
    bg = palette.editor.background,
    fg = palette.interface.background,
  },
  separator_selected = {
    bg = palette.editor.background,
    fg = palette.interface.background,
  },
  trunc_marker = {
    fg = "#C1C3C6",
    bg = palette.interface.background,
  },
}
