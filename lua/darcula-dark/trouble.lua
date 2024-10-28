local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "TroubleCount", { fg = palette.interface.hint_folder })
hi(0, "TroubleFilename", { fg = palette.interface.text })
hi(0, "TroublePos", { fg = palette.interface.hint_folder })
