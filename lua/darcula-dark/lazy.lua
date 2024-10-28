local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "LazyNormal", { bg = palette.interface.background })
hi(0, "LazyButtonActive", { bg = palette.interface.active_element })
hi(0, "LazyH1", { bg = palette.interface.active_element })
hi(0, "LazyProgressTodo", { fg = palette.interface.active_element })
hi(0, "LazyProgressDone", { fg = palette.interface.active_element })
