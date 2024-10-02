local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "IlluminatedWordText", {  bg = palette.editor.under_corsour })
hi(0, "IlluminatedWordRead", {  bg = palette.editor.under_corsour })
hi(0, "IlluminatedWordWrite", {  bg = palette.editor.under_corsour })

