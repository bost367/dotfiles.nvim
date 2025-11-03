local M = {}
local palette = require("darcula-dark.palette")

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
    WarningMesage = { fg = palette.editor.diagnostic.warn },
    Special = { fg = palette.lang.default.keyword },
    MsgArea = { bg = palette.interface.background, fg = palette.interface.foreground },
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
    DiffAdd = { bg = palette.lang.diff.added },
    DiffChange = { bg = palette.lang.diff.changed },
    DiffDelete = { bg = palette.lang.diff.deleted },
    DiffText = { bg = palette.lang.diff.changed_important },

    -- Language
    Comment = { fg = palette.lang.default.comment },
    Character = { fg = palette.lang.default.string },
    String = { fg = palette.lang.default.string },
    Number = { fg = palette.lang.default.number },
    Float = { fg = palette.lang.default.number },
    Constant = { fg = palette.lang.default.constant },
    Error = { fg = palette.lang.default.keyword },
    Function = { fg = palette.lang.default.function_decaration },
    Identifier = { fg = palette.lang.default.foreground },
    Keyword = { fg = palette.lang.default.keyword },
    Statement = { fg = palette.lang.default.keyword },
    Operator = { fg = palette.lang.default.foreground },
    PreProc = { fg = palette.lang.default.metadata },
    Todo = { fg = palette.lang.default.comment_todo },
    Type = { fg = palette.lang.default.struct },

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

    LspInlayHint = { fg = palette.lang.default.inline_hint_fg, bg = palette.lang.default.inline_hint_bg },
  }
end

return M
