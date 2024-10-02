local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "Pmenu", { bg = palette.interface.background })
hi(0, "PmenuSel", {  bg = palette.interface.cursor_line})

