local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "LazyNormal", { bg = palette.editor.background })
hi(0, "LazyButton", { bg = palette.interface.background })
hi(0, "LazyButtonActive", { bg = palette.interface.active_element })
hi(0, "LazyH1", { bg = palette.interface.active_element })
hi(0, "LazyH2", { fg = palette.interface.text, bold = true })
hi(0, "LazyProgressTodo", { fg = palette.interface.active_element })
hi(0, "LazyProgressDone", { fg = palette.interface.active_element })
hi(0, "LazySpecial", { fg = palette.interface.hint_text })
hi(0, "LazyProp", { fg = palette.interface.hint_text })
hi(0, "LazyUrl", { fg = palette.link })
hi(0, "LazyDir", { fg = palette.interface.hint_text })
