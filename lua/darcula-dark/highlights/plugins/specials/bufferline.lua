local palette = require("darcula-dark.palette")
local not_selected = palette.editor.foreground

-- Errros
local ignore_diagnostics_hl = {
  fg = not_selected,
  bg = palette.editor.background,
  sp = palette.editor.separator,
  underline = true,
  undercurl = false,
  italic = false,
  bold = false,
}

local select_ignored_diagnostic_hl = {
  fg = palette.interface.foreground,
  bg = palette.editor.background,
  sp = palette.editor.separator,
  underline = true,
  undercurl = false,
  italic = false,
  bold = false,
}

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
    fg = palette.icons.default,
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
  -- errors
  error = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.diagnostic.error,
    undercurl = true,
    italic = false,
    bold = false,
  },
  error_visible = {
    fg = not_selected,
    bg = palette.editor.background,
    sp = palette.editor.diagnostic.error,
    undercurl = true,
    italic = false,
    bold = false,
  },
  error_selected = {
    fg = palette.interface.foreground,
    bg = palette.editor.background,
    sp = palette.editor.diagnostic.error,
    undercurl = true,
    italic = false,
    bold = false,
  },
  warning = ignore_diagnostics_hl,
  warning_visible = ignore_diagnostics_hl,
  warning_selected = select_ignored_diagnostic_hl,
  info = ignore_diagnostics_hl,
  info_visible = ignore_diagnostics_hl,
  info_selected = select_ignored_diagnostic_hl,
  hint = ignore_diagnostics_hl,
  hint_visible = ignore_diagnostics_hl,
  hint_selected = select_ignored_diagnostic_hl,
}
