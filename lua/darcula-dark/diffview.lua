local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "DiffviewNormal", { bg = palette.interface.background })
hi(0, "DiffviewFolderName", { fg = palette.interface.text })
hi(0, "DiffviewFolderSign", { fg = palette.interface.text })
hi(0, "DiffviewCursorLine", { bg = palette.interface.cursor_line })
hi(0, "DiffviewDiffAddAsDelete", { bg = palette.lang.diff.deleted })
hi(0, "DiffviewWinSeparator", { bg = palette.editor.background, fg = palette.editor.background })
hi(0, "DiffviewDiffDeleteDim", { fg = palette.lang.diff.deleted })

-- tiitles
hi(0, "DiffviewFilePanelRootPath", { fg = palette.interface.text, bold = true })
hi(0, "DiffviewFilePanelTitle", { fg = palette.interface.text, bold = true })
hi(0, "DiffviewFilePanelConflicts", { fg = palette.interface.text, bold = true })

-- file status
hi(0, "DiffviewStatusAdded", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewStatusModified", { fg = palette.file_manager.vcs.modified_file })
hi(0, "DiffviewStatusRenamed", { fg = palette.file_manager.vcs.modified_file })
hi(0, "DiffviewStatusCopied", { fg = palette.file_manager.vcs.modified_file })
hi(0, "DiffviewStatusTypeChange", { fg = palette.file_manager.vcs.modified_file })
hi(0, "DiffviewStatusUnmerged", { fg = palette.file_manager.vcs.merge_conflict_file })
hi(0, "DiffviewStatusDeleted", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "DiffviewStatusIgnored", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "DiffviewStatusUntracked", { fg = palette.file_manager.vcs.untracked_file })
hi(0, "DiffviewStatusUnknown", { fg = palette.file_manager.vcs.untracked_file })
hi(0, "DiffviewStatusBroken", { fg = palette.file_manager.vcs.merge_conflict_file })

-- history
hi(0, "DiffviewFilePanelFileName", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelSelected", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelPath", { fg = palette.interface.hint_text })
hi(0, "DiffviewFilePanelInsertions", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewFilePanelDeletions", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "DiffviewFilePanelConflicts", { fg = palette.file_manager.vcs.merge_conflict_file })
hi(0, "DiffviewFilePanelCounter", { fg = palette.lang.default.text })
hi(0, "DiffviewHash", { fg = palette.lang.default.text })
hi(0, "DiffviewReference", { fg = palette.interface.search_select })
hi(0, "DiffviewNonText", { fg = "#42454B" })

-- commit message pop-up
hi(0, "gitKeyword", { fg = palette.interface.hint_text })
hi(0, "gitHashAbbrev", { fg = palette.lang.default.text })
hi(0, "gitIdentityHeader", { fg = palette.interface.hint_text })
hi(0, "gitIdentity", { fg = palette.lang.default.text })
hi(0, "gitEmail", { fg = palette.link })
hi(0, "gitEmailDelimiter", { fg = palette.link })
hi(0, "gitDateHeader", { fg = palette.interface.hint_text })
hi(0, "gitHead", { fg = palette.lang.default.text })

-- help menu
hi(0, "DiffviewDim1", { fg = palette.interface.hint_text }) -- git log option
hi(0, "DiffviewSecondary", { fg = palette.interface.hint_text }) -- hot key combination
