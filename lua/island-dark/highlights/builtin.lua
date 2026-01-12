local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    Normal = { bg = palette.editor.background, fg = palette.editor.foreground },
    NormalFloat = { bg = palette.editor.background, fg = palette.interface.foreground },
    FloatBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    WinSeparator = { fg = palette.editor.separator },
    Pmenu = { bg = palette.interface.background },
    PmenuSel = { bg = palette.interface.cursor_line },
    PmenuSbar = { bg = palette.scroll_bar.background },
    LineNr = { fg = palette.gutter_bar.line_number },
    EndOfBuffer = { fg = palette.gutter_bar.line_number },
    CursorLine = { bg = palette.editor.cursor_line },
    CursorLineNr = { fg = palette.gutter_bar.cursor_line_fg, bg = palette.gutter_bar.cursor_line_bg },
    ColorColumn = { bg = palette.editor.separator },
    Visual = { bg = palette.editor.selected_area },
    Search = { bg = palette.editor.matching_text },
    CurSearch = { bg = palette.editor.current_match },
    Title = { fg = palette.interface.foreground, bold = true },
    ErrorMsg = { fg = palette.editor.diagnostic.error },
    WarningMessage = { fg = palette.editor.diagnostic.warn },
    Special = { fg = palette.syntax.default.keyword },
    MsgArea = { bg = palette.interface.statusbar, fg = palette.interface.foreground },
    Question = { fg = palette.hint_text },
    Directory = { fg = palette.hint_text },
    SpellBad = { sp = palette.editor.diagnostic.spell, undercurl = true },
    SpellCap = { sp = palette.editor.diagnostic.spell, undercurl = true },
    SpellLocal = { sp = palette.editor.diagnostic.spell, undercurl = true },
    SpellRare = { sp = palette.editor.diagnostic.spell, undercurl = true },
    Folded = { bg = palette.editor.fold.bg, fg = palette.editor.fold.fg },
    NonText = { fg = palette.editor.separator },
    StatusLine = { bg = palette.editor.background },

    -- Diff files
    -- https://github.com/neovim/neovim/issues/9800
    DiffAdd = { bg = palette.syntax.diff.added },
    DiffChange = { bg = palette.syntax.diff.changed },
    DiffDelete = { bg = palette.syntax.diff.deleted },
    DiffText = { bg = palette.syntax.diff.changed_important },

    -- Language
    Identifier = { fg = palette.syntax.default.foreground },
    Type = { fg = palette.syntax.default.struct },
    Character = { fg = palette.syntax.default.string },
    String = { fg = palette.syntax.default.string },
    Number = { fg = palette.syntax.default.number },
    Float = { fg = palette.syntax.default.number },
    Constant = { fg = palette.syntax.default.constant, italic = true },
    Error = { fg = palette.syntax.default.keyword },
    Function = { fg = palette.syntax.default.function_declaration },
    Keyword = { fg = palette.syntax.default.keyword },
    Statement = { fg = palette.syntax.default.keyword },
    Operator = { fg = palette.syntax.default.foreground },
    PreProc = { fg = palette.syntax.default.metadata },
    Comment = { fg = palette.syntax.default.comment },
    Todo = { fg = palette.syntax.default.comment_todo, italic = true },

    -- Diagnostics
    DiagnosticError = { fg = palette.editor.diagnostic.error },
    DiagnosticWarn = { fg = palette.editor.diagnostic.warn },
    DiagnosticHint = { fg = palette.editor.diagnostic.weak_warn },
    DiagnosticInfo = { fg = palette.editor.diagnostic.info },
    DiagnosticOk = { fg = palette.editor.diagnostic.ok },

    DiagnosticVirtualTextError = { fg = palette.editor.diagnostic.error_message, italic = true },
    DiagnosticVirtualTextWarn = { fg = palette.editor.diagnostic.warn_message, italic = true },
    DiagnosticVirtualTextHint = { fg = palette.editor.diagnostic.weak_warn_messag, italic = true },
    DiagnosticVirtualTextInfo = { fg = palette.editor.diagnostic.info, italic = true },

    DiagnosticUnnecessary = { fg = palette.editor.diagnostic.unnecessary },
    DiagnosticUnderlineError = { sp = palette.editor.diagnostic.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = palette.editor.diagnostic.warn, undercurl = true },
    DiagnosticUnderlineHint = { sp = palette.editor.diagnostic.weak_warn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = palette.editor.diagnostic.info, undercurl = true },
  }
end

return M
