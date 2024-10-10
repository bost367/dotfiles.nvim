local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "NeoTreeCursorLine", { bg = palette.interface.cursor_line })
hi(0, "NeoTreeBufferNumber", { fg = palette.interface.hint_text })
hi(0, "NeoTreeDimText", { fg = palette.interface.hint_text })
hi(0, "NeoTreeDirectoryIcon", { fg = palette.interface.text })
hi(0, "NeoTreeDirectoryName", { fg = palette.interface.text })
hi(0, "NeoTreeDotfile", { fg = palette.interface.text })
hi(0, "NeoTreeFileIcon", { fg = palette.interface.text })
hi(0, "NeoTreeFileName", { fg = palette.interface.text })
hi(0, "NeoTreeFileNameOpened", { fg = palette.interface.text })
hi(0, "NeoTreeFloatBorder", { fg = palette.editor.background })
-- NeoTreeFilterTerm         The filter term, as displayed in the root node.

hi(0, "NeoTreeGitAdded", { fg = palette.file_manager.vcs.added_file })
hi(0, "NeoTreeGitConflict", { fg = palette.file_manager.vcs.merge_conflict_file })
hi(0, "NeoTreeGitDeleted", { fg = palette.file_manager.vcs.deleted_file })
hi(0, "NeoTreeGitIgnored", { fg = palette.file_manager.vcs.ignored_file })
hi(0, "NeoTreeGitModified", { fg = palette.file_manager.vcs.changed_file })
-- NeoTreeGitUnstaged        Used for git unstaged symbol.
hi(0, "NeoTreeGitUntracked", { fg = palette.file_manager.vcs.unknown_file })
-- NeoTreeGitStaged          Used for git staged symbol.
-- NeoTreeHiddenByName       Used for icons and names when `hide_by_name` is used.
-- NeoTreeIndentMarker       The style of indentation markers (guides). By default, the "Normal" highlight is used.

hi(0, "NeoTreeNormal", { bg = palette.interface.background })
hi(0, "NeoTreeNormalNC", { bg = palette.interface.background })
hi(0, "NeoTreeRootName", { fg = palette.interface.text, bold = true })
hi(0, "NeoTreeWinSeparator", { fg = palette.editor.background })
hi(0, "NeoTreeModified", { fg = palette.file_manager.vcs.changed_file })
hi(0, "NeoTreeExpander", { fg = palette.interface.hint_text })
hi(0, "NeoTreeWindowsHidden", { fg = palette.interface.hint_text })
hi(0, "NeoTreeTitleBar", { bg = "#393B40" })
hi(0, "NeoTreeStats", { fg = palette.interface.hint_text })
hi(0, "NeoTreeStatsHeader", { fg = palette.interface.hint_text, bold = true })
-- NeoTreeSignColumn         |hl-SignColumn| override in Neo-tree window.
-- NeoTreeStatusLine         |hl-StatusLine| override in Neo-tree window.
-- NeoTreeStatusLineNC       |hl-StatusLineNC| override in Neo-tree window.
-- NeoTreeVertSplit          |hl-VertSplit| override in Neo-tree window.
-- NeoTreeEndOfBuffer        |hl-EndOfBuffer| override in Neo-tree window.
-- NeoTreeSymbolicLinkTarget Symbolic link target.
