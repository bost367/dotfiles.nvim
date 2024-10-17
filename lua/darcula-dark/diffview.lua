local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

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
-- StatusUnmerged = "diffChanged",
-- DiffviewStatusUnknown
hi(0, "DiffviewStatusDeleted", { fg = palette.file_manager.vcs.deleted_file })
-- StatusBroken = "diffRemoved",
hi(0, "DiffviewStatusIgnored", { fg = palette.file_manager.vcs.ignored_file })

-- FilePanelRootPath = "DiffviewFilePanelTitle",
hi(0, "DiffviewFilePanelFileName", { fg = palette.interface.text })
hi(0, "DiffviewFilePanelSelected", { fg = palette.interface.text })
-- FilePanelPath = "Comment",
hi(0, "DiffviewFilePanelInsertions", { fg = palette.file_manager.vcs.added_file })
hi(0, "DiffviewFilePanelDeletions", { fg = palette.file_manager.vcs.deleted_file })
-- FilePanelConflicts = "DiagnosticSignWarn",
