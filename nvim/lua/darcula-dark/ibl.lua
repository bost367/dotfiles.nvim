
-- Seems it has no effect
local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "IblIndent", { fg = palette.interface.vcs.changed_file })
hi(0, "IblScope", { fg = palette.interface.background })

