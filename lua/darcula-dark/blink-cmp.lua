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
    BlinkCmpKindVariable = { fg = palette.lang.default.keyword },
    BlinkCmpKindField = { fg = palette.lang.default.constant },
    BlinkCmpKindProperty = { fg = palette.lang.default.constant },
    BlinkCmpKindEnum = { fg = palette.lang.default.constant },
    BlinkCmpKindKeyword = { fg = palette.lang.default.keyword },
    BlinkCmpKindEnumMember = { fg = palette.lang.default.string },
    BlinkCmpKindConstant = { fg = palette.lang.default.keyword },
    BlinkCmpKindStruct = { fg = palette.lang.default.constant },
    BlinkCmpKindMethod = { fg = "#db5c5c" },
    BlinkCmpKindFunction = { fg = "#db5c5c" },
    BlinkCmpKindClass = { fg = "#db5c5c" },
    BlinkCmpKindInterface = { fg = palette.lang.default.string },
    BlinkCmpKindModule = { fg = palette.interface.active_element },
    BlinkCmpKindSnippet = { fg = palette.icon },
    BlinkCmpKindFolder = { fg = palette.icon },
  }
end

return M
