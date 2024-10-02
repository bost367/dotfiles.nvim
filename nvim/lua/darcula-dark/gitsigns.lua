local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "GitSignsAdd", { fg = palette.editor.vcs.added_line })
hi(0, "GitSignsChange", { fg = palette.editor.vcs.changed_line })
hi(0, "GitSignsDelete", { fg = palette.editor.vcs.deleted_line })

