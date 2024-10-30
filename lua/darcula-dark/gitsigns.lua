local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "GitSignsAdd", { fg = palette.gutter_bar.vcs.added_line })
hi(0, "GitSignsChange", { fg = palette.gutter_bar.vcs.changed_line })
hi(0, "GitSignsDelete", { fg = palette.gutter_bar.vcs.deleted_line })
hi(0, "GitSignsChangedelete", { fg = palette.gutter_bar.vcs.changed_delete_line })
