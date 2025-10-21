local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")
local link_text = "#6B9BFA"

-- DiffviewDiffDelete xxx links to DiffviewDiffDeleteDim
-- DiffviewDiffDeleteDim xxx links to Commen
-- DiffviewDiffText xxx links to DiffText
-- DiffviewDiffAdd xxx links to DiffAdd
-- DiffviewDiffChange xxx links to DiffChange
hi(0, "DiffviewNormal", { bg = palette.interface.background })
hi(0, "DiffviewFolderName", { fg = palette.interface.text })
hi(0, "DiffviewFolderSign", { fg = palette.interface.text })
hi(0, "DiffviewCursorLine", { bg = palette.interface.cursor_line })
hi(0, "DiffviewDiffAddAsDelete", { bg = palette.lang.diff.deleted })
hi(0, "DiffviewWinSeparator", { bg = palette.editor.background, fg = palette.editor.background })

-- File Status
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
hi(0, "DiffviewReference", { fg = palette.interface.hint_text })
-- DiffviewStatusLineNC xxx links to StatusLineNC
-- DiffviewStatusLine xxx links to StatusLine
-- DiffviewStatusBroken

-- FilePanelRootPath = "DiffviewFilePanelTitle",
-- DiffviewFilePanelTitle xxx cterm=bold gui=bold guifg=#e0e2ea
-- DiffviewFilePanelConflicts xxx links to DiagnosticSignWarn
-- DiffviewFilePanelRootPath xxx links to DiffviewFilePanelTitle
hi(0, "DiffviewFilePanelFileName", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelSelected", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelPath", { fg = palette.interface.hint_text })
hi(0, "DiffviewFilePanelInsertions", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewFilePanelDeletions", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "DiffviewFilePanelCounter", { fg = palette.interface.hint_text })
hi(0, "DiffviewNonText", { fg = palette.editor.separator })

hi(0, "gitKeyword", { fg = palette.interface.text })
hi(0, "gitHashAbbrev", { fg = palette.interface.text })
hi(0, "gitIdentityHeader", { fg = palette.interface.text })
hi(0, "gitIdentity", { fg = palette.interface.text })
hi(0, "gitEmail", { fg = link_text })
hi(0, "DiffviewSignColumn", { bg = link_text })
hi(0, "gitDateHeader", { fg = palette.interface.hint_text })
hi(0, "gitDate", { fg = palette.interface.hint_text })

-- diffRemoved    xxx cleared
-- diffAdded      xxx cleared
-- diffChanged    xxx cleared
--
-- DiffviewReference xxx guifg=#6f737a
-- DiffviewEndOfBuffer xxx links to EndOfBuffer
--
-- DiffviewDim1   xxx guifg=#9b9ea4
-- DiffviewSecondary xxx guifg=#b3f6c0
-- DiffviewReflogSelector xxx links to Special
-- DiffviewHash   xxx links to Identifier
-- DiffviewNonText xxx links to NonText
-- DiffviewSignColumn xxx links to Normal
