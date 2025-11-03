local M = {}
local palette = require("darcula-dark.palette")
local match_in_preview = "#2d5436"

---@return table<any,Highliht>
function M.groups()
  return {
    FzfLuaNormal = { bg = palette.editor.background },
    FzfLuaBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    FzfLuaTitle = { fg = palette.interface.foreground },
    FzfLuaTitleFlags = { fg = palette.hint_text },
    FzfLuaCursor = { bg = match_in_preview },
    FzfLuaSearch = { bg = match_in_preview },
    FzfLuaPreviewNormal = { bg = palette.editor.background },
    FzfLuaPreviewBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    FzfLuaScrollBorderFull = { bg = palette.scroll_bar.background },
    FzfLuaHeaderText = { fg = palette.hint_text },
    FzfLuaPathColNr = { fg = palette.hint_text },
    FzfLuaPathLineNr = { fg = palette.hint_text },
    FzfLuaBufFlagCur = { bg = match_in_preview },
    FzfLuaDirPart = { fg = palette.hint_text },
    FzfLuaFilePart = { fg = palette.interface.foreground },
    FzfLuaLivePrompt = { bg = palette.editor.background },
    FzfLuaHeaderBind = { fg = palette.hint_text },
  }
end

return M
