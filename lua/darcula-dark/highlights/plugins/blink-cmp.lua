local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    BlinkCmpMenu = { bg = palette.editor.background, fg = "#B6BFB8" },
    BlinkCmpMenuBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpMenuSelection = { bg = palette.interface.cursor_line },
    BlinkCmpScrollBarGutter = { fg = "#616264" },
    BlinkCmpLabel = { fg = palette.editor.foreground },
    BlinkCmpLabelDeprecated = { fg = palette.editor.foreground, strikethrough = true },
    BlinkCmpLabelMatch = { fg = "#538AF7" },
    BlinkCmpLabelDetail = { fg = palette.hint_text },
    BlinkCmpLabelDescription = { fg = palette.hint_text },
    BlinkCmpSource = { fg = palette.hint_text },
    BlinkCmpDoc = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpDocBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpDocSeparator = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpDocCursorLine = { bg = palette.editor.background, fg = palette.editor.separator },

    -- Icon colors
    BlinkCmpKind = { bg = palette.editor.background },
    BlinkCmpKindText = { fg = palette.icon },
    BlinkCmpKindVariable = { fg = palette.syntax.default.keyword },
    BlinkCmpKindField = { fg = palette.syntax.default.constant },
    BlinkCmpKindProperty = { fg = palette.syntax.default.constant },
    BlinkCmpKindEnum = { fg = palette.syntax.default.constant },
    BlinkCmpKindKeyword = { fg = palette.syntax.default.keyword },
    BlinkCmpKindEnumMember = { fg = palette.syntax.default.string },
    BlinkCmpKindConstant = { fg = palette.syntax.default.keyword },
    BlinkCmpKindStruct = { fg = palette.syntax.default.constant },
    BlinkCmpKindMethod = { fg = "#db5c5c" },
    BlinkCmpKindFunction = { fg = "#db5c5c" },
    BlinkCmpKindClass = { fg = "#db5c5c" },
    BlinkCmpKindInterface = { fg = palette.syntax.default.string },
    BlinkCmpKindModule = { fg = palette.interface.active_element },
    BlinkCmpKindSnippet = { fg = palette.icon },
    BlinkCmpKindFolder = { fg = palette.icon },
  }
end

return M
