local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")
local link_text = "#6B9BFA"

hi(0, "DiffviewNormal", { bg = palette.interface.background })
hi(0, "DiffviewFolderName", { fg = palette.interface.text })
hi(0, "DiffviewFolderSign", { fg = palette.interface.text })
hi(0, "DiffviewCursorLine", { bg = palette.interface.cursor_line })
hi(0, "DiffviewDiffAddAsDelete", { bg = palette.lang.diff.deleted })
-- File Status
hi(0, "DiffviewStatusAdded", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewStatusUntracked", { fg = palette.file_manager.vcs.unknown_file })
hi(0, "DiffviewStatusModified", { fg = palette.file_manager.vcs.changed_file })
hi(0, "DiffviewStatusRenamed", { fg = palette.file_manager.vcs.changed_file })
hi(0, "DiffviewStatusCopied", { fg = palette.file_manager.vcs.changed_file })
hi(0, "DiffviewStatusTypeChange", { fg = palette.file_manager.vcs.changed_file })
hi(0, "DiffviewStatusUnmerged", { fg = palette.file_manager.vcs.merge_conflict_file })
hi(0, "DiffviewStatusDeleted", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "DiffviewStatusIgnored", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "DiffviewReference", { fg = palette.interface.hint_text })
-- DiffviewStatusUnknown
-- DiffviewStatusBroken

-- FilePanelRootPath = "DiffviewFilePanelTitle",
hi(0, "DiffviewFilePanelFileName", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelSelected", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelPath", { fg = palette.interface.hint_text })
hi(0, "DiffviewFilePanelInsertions", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewFilePanelDeletions", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "DiffviewFilePanelCounter", { fg = palette.interface.hint_text })
-- FilePanelConflicts = "DiagnosticSignWarn",

hi(0, "gitKeyword", { fg = palette.interface.text })
hi(0, "gitHashAbbrev", { fg = palette.interface.text })
hi(0, "gitIdentityHeader", { fg = palette.interface.text })
hi(0, "gitIdentity", { fg = palette.interface.text })
hi(0, "gitEmail", { fg = link_text })
hi(0, "gitEmailDelimiter", { fg = link_text })
hi(0, "gitDateHeader", { fg = palette.interface.hint_text })
hi(0, "gitDate", { fg = palette.interface.hint_text })
