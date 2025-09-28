local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "NvimTreeNormal", { bg = palette.interface.background })
hi(0, "NvimTreeWinSeparator", { fg = palette.editor.background })
hi(0, "NvimTreeCursorLine", { bg = palette.interface.cursor_line })
hi(0, "NvimTreeNormalFloat", { bg = palette.interface.background })

hi(0, "NvimTreeHiddenDisplay", { fg = palette.interface.hint_text })

hi(0, "NvimTreeImageFile", { fg = palette.interface.text })
hi(0, "NvimTreeSpecialFile", { fg = palette.interface.text })
hi(0, "NvimTreeSymlink", { fg = palette.interface.text })
hi(0, "NvimTreeExecFile", { fg = palette.interface.text })

hi(0, "NvimTreeRootFolder", { fg = palette.interface.text, bold = true })
hi(0, "NvimTreeFolderName", { fg = palette.interface.text })
hi(0, "NvimTreeEmptyFolderName", { fg = palette.interface.text })
hi(0, "NvimTreeOpenedFolderName", { fg = palette.interface.text })
hi(0, "NvimTreeSymlinkFolderName", { fg = palette.interface.text })

hi(0, "NvimTreeFileIcon", { fg = palette.interface.text })
hi(0, "NvimTreeSymlinkIcon", { fg = palette.interface.text })

hi(0, "NvimTreeModifiedIcon", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeModifiedFileHL", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeModifiedFolderHL", { fg = palette.file_manager.vcs.modified_file })

local folder_hl = palette.icon
hi(0, "NvimTreeFolderIcon", { fg = folder_hl })
hi(0, "NvimTreeOpenedFolderIcon", { fg = folder_hl })
hi(0, "NvimTreeClosedFolderIcon", { fg = folder_hl })
hi(0, "NvimTreeFolderArrowClosed", { fg = folder_hl })
hi(0, "NvimTreeFolderArrowOpen", { fg = folder_hl })

hi(0, "NvimTreeGitDeletedIcon", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "NvimTreeGitDirtyIcon", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitIgnoredIcon", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "NvimTreeGitNewIcon", { fg = palette.file_manager.vcs.untracked_file })
hi(0, "NvimTreeGitRenamedIcon", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitStagedIcon", { fg = palette.file_manager.vcs.added_file })

hi(0, "NvimTreeGitFileDeletedHL", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "NvimTreeGitFileDirtyHL", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitFileIgnoredHL", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "NvimTreeGitFileNewHL", { fg = palette.file_manager.vcs.untracked_file })
hi(0, "NvimTreeGitFileRenamedHL", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitFileStagedHL", { fg = palette.file_manager.vcs.added_file })

hi(0, "NvimTreeGitFolderDeletedHL", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "NvimTreeGitFolderDirtyHL", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitFolderIgnoredHL", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "NvimTreeGitFolderNewHL", { fg = palette.file_manager.vcs.untracked_file })
hi(0, "NvimTreeGitFolderRenamedHL", { fg = palette.file_manager.vcs.modified_file })
hi(0, "NvimTreeGitFolderStagedHL", { fg = palette.file_manager.vcs.added_file })
