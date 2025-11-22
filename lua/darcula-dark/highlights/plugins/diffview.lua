local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    DiffviewNormal = { bg = palette.interface.background },
    DiffviewFolderName = { fg = palette.interface.foreground },
    DiffviewFolderSign = { fg = palette.interface.foreground },
    DiffviewCursorLine = { bg = palette.interface.cursor_line },
    DiffviewDiffAddAsDelete = { bg = palette.syntax.diff.deleted },
    DiffviewWinSeparator = { bg = palette.editor.background, fg = palette.editor.background },
    DiffviewDiffDeleteDim = { fg = palette.syntax.diff.deleted },

    -- tiitles
    DiffviewFilePanelRootPath = { fg = palette.interface.foreground, bold = true },
    DiffviewFilePanelTitle = { fg = palette.interface.foreground, bold = true },

    -- file status
    DiffviewStatusAdded = { fg = palette.file_manager.vcs.added_file },
    DiffviewStatusModified = { fg = palette.file_manager.vcs.modified_file },
    DiffviewStatusRenamed = { fg = palette.file_manager.vcs.modified_file },
    DiffviewStatusCopied = { fg = palette.file_manager.vcs.modified_file },
    DiffviewStatusTypeChange = { fg = palette.file_manager.vcs.modified_file },
    DiffviewStatusUnmerged = { fg = palette.file_manager.vcs.merge_conflict_file },
    DiffviewStatusDeleted = { fg = palette.file_manager.vcs.deleted_file },
    DiffviewStatusIgnored = { fg = palette.file_manager.vcs.ignored_file },
    DiffviewStatusUntracked = { fg = palette.file_manager.vcs.untracked_file },
    DiffviewStatusUnknown = { fg = palette.file_manager.vcs.untracked_file },
    DiffviewStatusBroken = { fg = palette.file_manager.vcs.merge_conflict_file },

    -- history
    DiffviewFilePanelFileName = { fg = palette.interface.foreground },
    DiffviewFilePanelSelected = { fg = palette.interface.foreground },
    DiffviewFilePanelPath = { fg = palette.hint_text },
    DiffviewFilePanelInsertions = { fg = palette.file_manager.vcs.added_file },
    DiffviewFilePanelDeletions = { fg = palette.file_manager.vcs.deleted_file },
    DiffviewFilePanelConflicts = { fg = palette.file_manager.vcs.merge_conflict_file },
    DiffviewFilePanelCounter = { fg = palette.syntax.default.foreground },
    DiffviewHash = { fg = palette.syntax.default.foreground },
    DiffviewReference = { fg = palette.interface.search_select },
    DiffviewNonText = { fg = palette.editor.separator },

    -- commit message pop-up
    gitKeyword = { fg = palette.hint_text },
    gitHashAbbrev = { fg = palette.syntax.default.foreground },
    gitIdentityHeader = { fg = palette.hint_text },
    gitIdentity = { fg = palette.syntax.default.foreground },
    gitEmail = { fg = palette.link },
    gitEmailDelimiter = { fg = palette.link },
    gitDateHeader = { fg = palette.hint_text },
    gitHead = { fg = palette.syntax.default.foreground },

    -- help menu
    DiffviewDim1 = { fg = palette.hint_text }, -- git log option
    DiffviewSecondary = { fg = palette.hint_text }, -- hot key combination
  }
end

return M
