local M = {}
local palette = require("darcula-dark.palette")
local folder_hl = palette.icons.default

---@return table<any,Highliht>
function M.groups()
  return {
    NvimTreeNormal = { bg = palette.interface.background, fg = palette.interface.foreground },
    NvimTreeWinSeparator = { fg = palette.editor.background },
    NvimTreeCursorLine = { bg = palette.interface.cursor_line },
    NvimTreeNormalFloat = { bg = palette.interface.background },

    NvimTreeHiddenDisplay = { fg = palette.hint_text },

    NvimTreeImageFile = { fg = palette.interface.foreground },
    NvimTreeSpecialFile = { fg = palette.interface.foreground },
    NvimTreeSymlink = { fg = palette.interface.foreground },
    NvimTreeExecFile = { fg = palette.interface.foreground },

    NvimTreeRootFolder = { fg = palette.interface.foreground, bold = true },
    NvimTreeFolderName = { fg = palette.interface.foreground },
    NvimTreeEmptyFolderName = { fg = palette.interface.foreground },
    NvimTreeOpenedFolderName = { fg = palette.interface.foreground },
    NvimTreeSymlinkFolderName = { fg = palette.interface.foreground },

    NvimTreeModifiedIcon = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeModifiedFileHL = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeModifiedFolderHL = { fg = palette.file_manager.vcs.modified_file },

    NvimTreeFolderIcon = { fg = folder_hl },
    NvimTreeOpenedFolderIcon = { fg = folder_hl },
    NvimTreeClosedFolderIcon = { fg = folder_hl },
    NvimTreeFolderArrowClosed = { fg = folder_hl },
    NvimTreeFolderArrowOpen = { fg = folder_hl },
    NvimTreeFileIcon = { fg = folder_hl },
    NvimTreeSymlinkIcon = { fg = folder_hl },

    NvimTreeGitDeletedIcon = { fg = palette.file_manager.vcs.deleted_file },
    NvimTreeGitDirtyIcon = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitIgnoredIcon = { fg = palette.file_manager.vcs.ignored_file },
    NvimTreeGitNewIcon = { fg = palette.file_manager.vcs.untracked_file },
    NvimTreeGitRenamedIcon = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitStagedIcon = { fg = palette.file_manager.vcs.added_file },

    NvimTreeGitFileDeletedHL = { fg = palette.file_manager.vcs.deleted_file },
    NvimTreeGitFileDirtyHL = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitFileIgnoredHL = { fg = palette.file_manager.vcs.ignored_file },
    NvimTreeGitFileNewHL = { fg = palette.file_manager.vcs.untracked_file },
    NvimTreeGitFileRenamedHL = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitFileStagedHL = { fg = palette.file_manager.vcs.added_file },

    NvimTreeGitFolderDeletedHL = { fg = palette.file_manager.vcs.deleted_file },
    NvimTreeGitFolderDirtyHL = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitFolderIgnoredHL = { fg = palette.file_manager.vcs.ignored_file },
    NvimTreeGitFolderNewHL = { fg = palette.file_manager.vcs.untracked_file },
    NvimTreeGitFolderRenamedHL = { fg = palette.file_manager.vcs.modified_file },
    NvimTreeGitFolderStagedHL = { fg = palette.file_manager.vcs.added_file },

    NvimTreeLiveFilterPrefix = { fg = folder_hl, bg = palette.editor.background },
    NvimTreeLiveFilterValue = { fg = palette.interface.foreground },
  }
end

return M
