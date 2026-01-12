local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    BlinkCmpMenu = { bg = palette.editor.background, fg = palette.autocomplete.foreground },
    BlinkCmpMenuBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpMenuSelection = { bg = palette.interface.cursor_line },
    BlinkCmpScrollBarThumb = { bg = palette.scroll_bar.background },
    BlinkCmpLabel = { fg = palette.autocomplete.foreground },
    BlinkCmpLabelDeprecated = { fg = palette.autocomplete.foreground, strikethrough = true },
    BlinkCmpLabelMatch = { fg = palette.autocomplete.match },
    BlinkCmpLabelDetail = { fg = palette.hint_text },
    BlinkCmpLabelDescription = { fg = palette.hint_text },
    BlinkCmpSource = { fg = palette.hint_text },
    BlinkCmpDoc = { bg = palette.editor.background, fg = palette.editor.foreground },
    BlinkCmpDocBorder = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpDocSeparator = { bg = palette.editor.background, fg = palette.editor.separator },
    BlinkCmpDocCursorLine = { bg = palette.editor.background, fg = palette.editor.separator },

    -- Icon colors
    BlinkCmpKind = { bg = palette.editor.background },
    BlinkCmpKindText = { fg = palette.icons.default },
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
    BlinkCmpKindSnippet = { fg = palette.icons.default },
    BlinkCmpKindFolder = { fg = palette.icons.default },
  }
end

return M
