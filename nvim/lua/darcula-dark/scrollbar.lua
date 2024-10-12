local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "ScrollbarHandle", { bg = palette.scroll_bar.background, fg = palette.interface.scroll_bar })
hi(0, "ScrollbarError", { fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarErrorHandle", { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.error })
hi(0, "ScrollbarWarn", { fg = palette.editor.diagnostic.weak_warn })
hi(0, "ScrollbarWarnHandle", { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.weak_warn })
hi(0, "ScrollbarInfo", { fg = palette.editor.diagnostic.ok })
hi(0, "ScrollbarInfoHandle", { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.ok })
hi(0, "ScrollbarHint", { fg = palette.editor.diagnostic.warn })
hi(0, "ScrollbarHintHandle", { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.warn })
hi(0, "ScrollbarGitAdd", { fg = palette.scroll_bar.vcs.added_line })
hi(0, "ScrollbarGitAddHandle", { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.added_line })
hi(0, "ScrollbarGitChange", { fg = palette.scroll_bar.vcs.changed_line })
hi(0, "ScrollbarGitChangeHandle", { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.changed_line })
hi(0, "ScrollbarGitDelete", { fg = palette.scroll_bar.vcs.deleted_line })
hi(0, "ScrollbarGitDeleteHandle", { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.deleted_line })
