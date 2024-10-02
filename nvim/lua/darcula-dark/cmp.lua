local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "Pmenu", { bg = palette.interface.background })
hi(0, "FloatBorder", { bg = palette.interface.background, fg = palette.interface.hint_text})

-- :h cmp-high
hi(0, "CmpItemAbbr", { fg = palette.editor.text })
hi(0, "CmpItemAbbrDeprecated", { fg = palette.editor.text, strikethrough = true })
hi(0, "CmpItemAbbrMatch", { fg = palette.interface.active_element })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = palette.interface.active_element })
hi(0, "CmpItemMenu", { fg = palette.interface.cursor_line })
hi(0, "CmpItemKind", { fg = palette.editor.text })
hi(0, "CmpItemKindVariable", { fg = palette.lang.default.keyword })
hi(0, "CmpItemKindField", { fg = palette.lang.default.constant })
hi(0, "CmpItemKindProperty", { fg = palette.lang.default.constant })
hi(0, "CmpItemKindEnum", { fg = palette.lang.default.constant })
hi(0, "CmpItemKindEnumMember", { fg = palette.lang.default.str })
hi(0, "CmpItemKindConstant", { fg = palette.lang.default.keyword })
hi(0, "CmpItemKindStruct", { fg = palette.lang.default.constant })
hi(0, "CmpItemKindMethod", { fg = "#db5c5c" })
hi(0, "CmpItemKindFunction", { fg = "#db5c5c" })
hi(0, "CmpItemKindClass", { fg = "#db5c5c" })
hi(0, "CmpItemKindInterface", { fg = palette.lang.default.str })
hi(0, "CmpItemKindModule", { fg = palette.interface.active_element })

