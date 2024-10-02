local hi = vim.api.nvim_set_hl
local cmd = vim.cmd

--cmd.colorscheme("darcula-dark")
local palette = require("darcula-dark.palette")

-- custom 
hi(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })

-- colors overriding
hi(0, "CursorLine", { bg = "#26282E", ctermbg = 1 })
hi(0, "ColorColumn", { bg = "#393B40", ctermbg = 1 })
hi(0, "Normal", { bg = palette.editor.background, ctermbg = 1 })
hi(0, "LineNr", { fg = "#474B54" })
hi(0, "CursorLine", { bg = palette.editor.cursor_line})
hi(0, "CursorLineNr", { bg = palette.editor.cursor_line})
hi(0, "Visual", { bg = palette.editor.select })

-- diagnostics
hi(0, "DiagnosticError", { ctermfg = 1, fg = palette.editor.diagnostic.error })
hi(0, "DiagnosticHint", { ctermfg = 7, fg = palette.editor.diagnostic.warn })
hi(0, "DiagnosticWarn", { ctermfg = 7, fg = palette.editor.diagnostic.weak_warn })
hi(0, "DiagnosticInfo", { ctermfg = 4, fg = palette.editor.diagnostic.error })

-- vim-illuminate
hi(0, "IlluminatedWordText", {  bg = palette.editor.under_corsour })
hi(0, "IlluminatedWordRead", {  bg = palette.editor.under_corsour })
hi(0, "IlluminatedWordWrite", {  bg = palette.editor.under_corsour })

