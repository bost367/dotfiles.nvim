local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    ScrollbarHandle = { bg = palette.scroll_bar.background },
    ScrollbarError = { fg = palette.scroll_bar.diagnostic.error },
    ScrollbarErrorHandle = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.diagnostic.error },
    ScrollbarWarn = { fg = palette.scroll_bar.diagnostic.warn },
    ScrollbarWarnHandle = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.diagnostic.warn },
    ScrollbarInfo = { fg = palette.editor.diagnostic.info },
    ScrollbarInfoHandle = { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.info },
    ScrollbarHint = { fg = palette.editor.diagnostic.weak_warn },
    ScrollbarHintHandle = { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.weak_warn },
    ScrollbarGitAdd = { fg = palette.scroll_bar.vcs.added_line },
    ScrollbarGitAddHandle = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.added_line },
    ScrollbarGitChange = { fg = palette.scroll_bar.vcs.changed_line },
    ScrollbarGitChangeHandle = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.changed_line },
    ScrollbarGitDelete = { fg = palette.scroll_bar.vcs.deleted_line },
    ScrollbarGitDeleteHandle = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.deleted_line },
  }
end

return M
