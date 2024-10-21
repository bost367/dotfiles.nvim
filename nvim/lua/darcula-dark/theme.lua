-- :highlight - see all
local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })
hi(0, "WinSeparator", { fg = palette.interface.background })
hi(0, "Pmenu", { bg = palette.interface.background })
hi(0, "PmenuSel", { bg = palette.interface.cursor_line })
hi(0, "PmenuSbar", { bg = palette.scroll_bar.background })
hi(0, "FloatBorder", { bg = palette.editor.background, fg = palette.interface.hint_folder })
hi(0, "Normal", { bg = palette.editor.background, fg = palette.editor.text })
hi(0, "NormalFloat", { bg = palette.editor.background, fg = palette.interface.text })
hi(0, "LineNr", { fg = "#4b5059" })
hi(0, "EndOfBuffer", { fg = "#4b5059" })
hi(0, "CursorLine", { bg = palette.editor.cursor_line })
hi(0, "CursorLineNr", { fg = "#a1a3ab" })
hi(0, "ColorColumn", { bg = "#393B40" })
hi(0, "Visual", { bg = palette.editor.select })
hi(0, "Search", { bg = palette.editor.search_select })
hi(0, "CurSearch", { bg = "#214283" })
hi(0, "Title", { fg = palette.interface.text, bold = true })
hi(0, "DiffAdd", { bg = palette.editor.vcs.added_diff })
hi(0, "DiffChange", { bg = palette.editor.vcs.changed_diff })
hi(0, "DiffDelete", { bg = palette.editor.vcs.deleted_diff })
hi(0, "DiffText", { bg = "#43698D" })
hi(0, "ErrorMsg", { fg = palette.editor.diagnostic.error })
hi(0, "WarningMesage", { fg = palette.editor.diagnostic.warn })
hi(0, "Special", { fg = palette.lang.default.keyword })
hi(0, "MsgArea", { bg = palette.interface.background, fg = palette.interface.text })
hi(0, "Question", { fg = palette.interface.hint_text })
hi(0, "Directory", { fg = palette.interface.hint_folder })
hi(0, "SpellBad", { sp = palette.editor.diagnostic.spell, undercurl = true })
hi(0, "SpellCap", { sp = palette.editor.diagnostic.spell, undercurl = true })
hi(0, "SpellLocal", { sp = palette.editor.diagnostic.spell, undercurl = true })
hi(0, "SpellRare", { sp = palette.editor.diagnostic.spell, undercurl = true })

-- Language
hi(0, "Comment", { fg = palette.lang.default.comment })
hi(0, "Character", { fg = palette.lang.default.str })
hi(0, "String", { fg = palette.lang.default.str })
hi(0, "Number", { fg = palette.lang.default.digit })
hi(0, "Float", { fg = palette.lang.default.digit })
hi(0, "Constant", { fg = palette.lang.default.constant })
hi(0, "Error", { fg = palette.lang.default.keyword })
hi(0, "Function", { fg = palette.lang.default.function_decaration })
hi(0, "Identifier", { fg = palette.lang.default.text })
hi(0, "Keyword", { fg = palette.lang.default.keyword })
hi(0, "Statement", { fg = palette.lang.default.keyword })
hi(0, "Operator", { fg = palette.lang.default.text })
hi(0, "PreProc", { fg = palette.lang.default.metadata })
hi(0, "Todo", { fg = palette.lang.default.comment_todo })
hi(0, "Type", { fg = palette.lang.default.struct })

-- Diagnostics
hi(0, "DiagnosticError", { fg = palette.editor.diagnostic.error })
hi(0, "DiagnosticWarn", { fg = palette.editor.diagnostic.warn })
hi(0, "DiagnosticHint", { fg = palette.editor.diagnostic.weak_warn })
hi(0, "DiagnosticInfo", { fg = palette.editor.diagnostic.info })
hi(0, "DiagnosticOk", { fg = palette.editor.diagnostic.ok })
hi(0, "DiagnosticUnnecessary", { fg = palette.editor.diagnostic.unnecessary })
hi(0, "DiagnosticUnderlineError", { sp = palette.editor.diagnostic.error, undercurl = true })
hi(0, "DiagnosticUnderlineWarn", { sp = palette.editor.diagnostic.warn, undercurl = true })
hi(0, "DiagnosticUnderlineHint", { sp = palette.editor.diagnostic.weak_warn, undercurl = true })
hi(0, "DiagnosticUnderlineInfo", { sp = palette.editor.diagnostic.info, undercurl = true })

hi(0, "LspInlayHint", { fg = "#868A91", bg = "#2D2E32" })
