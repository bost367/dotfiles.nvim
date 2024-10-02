local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = palette.editor.vcs.added_line })

