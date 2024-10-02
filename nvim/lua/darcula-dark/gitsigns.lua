local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "GitGutterAdd", { fg = palette.editor.vcs.added_line })
hi(0, "GitGutterChange", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterChangeDelete", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterDelete", { fg = palette.editor.vcs.deleted_line })

