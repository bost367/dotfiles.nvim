local palette = require("darcula-dark.palette")
local not_selected = palette.editor.foreground
local new_bg = "#25272A"

-- Errros
local ignore_diagnostics_hl = {
  fg = not_selected,
  bg = new_bg,
  underline = true,
  undercurl = false,
  italic = false,
  bold = false,
}

local select_ignored_diagnostic_hl = {
  fg = palette.interface.foreground,
  bg = new_bg,
  underline = true,
  undercurl = false,
  italic = false,
  bold = false,
}

return {
  -- empty space after buffers
  fill = {
    bg = new_bg,
  },
  -- buffers
  background = {
    fg = not_selected,
    bg = new_bg,
  },
  buffer_visible = {
    fg = not_selected,
    bg = new_bg,
  },
  buffer_selected = {
    fg = palette.interface.foreground,
    bg = palette.editor.background,
    bold = false,
    italic = false,
  },
  -- separator among buffers
  separator = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  separator_visible = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  separator_selected = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  -- selected bufer
  indicator_visible = {
    fg = palette.interface.active_element,
    bg = new_bg,
  },
  indicator_selected = {
    fg = palette.interface.active_element,
    bg = new_bg,
  },
  -- number of hidden buffers (left/right arrows)
  trunc_marker = {
    fg = palette.icons.default,
    bg = new_bg,
  },
  -- buffer close button
  close_button = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  close_button_visible = {
    fg = palette.hint_text,
    bg = new_bg,
  },
  close_button_selected = {
    fg = palette.hint_text,
    bg = palette.editor.background,
  },
  -- modified file indicator
  modified = {
    fg = palette.file_manager.vcs.modified_file,
    bg = new_bg,
  },
  modified_visible = {
    fg = palette.file_manager.vcs.modified_file,
    bg = new_bg,
  },
  modified_selected = {
    fg = palette.file_manager.vcs.modified_file,
    bg = new_bg,
  },
  -- duplicated filenames in different folders
  duplicate = {
    fg = not_selected,
    bg = new_bg,
    italic = false,
  },
  duplicate_selected = {
    fg = palette.interface.foreground,
    bg = new_bg,
    italic = false,
  },
  duplicate_visible = {
    fg = not_selected,
    bg = new_bg,
    italic = false,
  },
  -- tabs
  tab = {
    fg = not_selected,
    bg = new_bg,
  },
  tab_selected = {
    fg = palette.interface.foreground,
    bg = new_bg,
  },
  tab_separator = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  tab_separator_selected = {
    fg = palette.editor.background,
    bg = new_bg,
  },
  -- buffer close button
  tab_close = {
    fg = not_selected,
    bg = new_bg,
  },
  -- errors
  error = {
    fg = not_selected,
    bg = new_bg,
    sp = palette.editor.diagnostic.error,
    undercurl = true,
    italic = false,
    bold = false,
  },
  error_visible = {
    fg = not_selected,
    bg = new_bg,
    sp = palette.editor.diagnostic.error,
    undercurl = true,
    italic = false,
    bold = false,
  },
  error_selected = {
    fg = palette.interface.foreground,
    bg = new_bg,
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
