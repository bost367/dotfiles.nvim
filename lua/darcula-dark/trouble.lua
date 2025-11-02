local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "TroubleCount", { fg = palette.hint_text })
hi(0, "TroubleFilename", { fg = palette.interface.foreground })
hi(0, "TroublePos", { fg = palette.hint_text })
hi(0, "TroubleNormal", { bg = palette.interface.background })
