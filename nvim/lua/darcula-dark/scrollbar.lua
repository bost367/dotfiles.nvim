local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "ScrollbarHandle", { ctermfg = 0, bg = palette.interface.scroll_bar, fg = palette.interface.scroll_bar })
hi(0, "ScrollbarError", { ctermfg = 0, fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarErrorHandle", { ctermfg = 0, fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarWarn", { ctermfg = 0, fg = palette.editor.diagnostic.weak_warn })
hi(0, "ScrollbarWarnHandle", { ctermfg = 0, fg = palette.editor.diagnostic.weak_warn })
hi(0, "ScrollbarInfo", { ctermfg = 0, fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarInfoHandle", { ctermfg = 0, fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarHint", { ctermfg = 0, fg = palette.editor.diagnostic.warn })
hi(0, "ScrollbarHintHandle", { ctermfg = 0, fg = palette.editor.diagnostic.warn })
hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = palette.editor.vcs.added_line })
hi(0, "ScrollbarGitAddHandle", { ctermfg = 0, fg = palette.editor.vcs.added_line })
hi(0, "ScrollbarGitChange", { ctermfg = 0, fg = palette.editor.vcs.changed_line })
hi(0, "ScrollbarGitChangeHandle", { ctermfg = 0, fg = palette.editor.vcs.changed_line })
hi(0, "ScrollbarGitDelete", { ctermfg = 0, fg = palette.editor.vcs.deleted_line })
hi(0, "ScrollbarGitDeleteHandle", { ctermfg = 0, fg = palette.editor.vcs.deleted_line })

