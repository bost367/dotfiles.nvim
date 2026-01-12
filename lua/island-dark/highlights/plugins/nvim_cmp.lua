local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    CmpItemAbbr = { fg = palette.autocomplete.foreground },
    CmpItemAbbrDeprecated = { fg = palette.autocomplete.foreground, strikethrough = true },
    CmpItemAbbrMatch = { fg = palette.interface.active_element },
    CmpItemAbbrMatchFuzzy = { fg = palette.interface.active_element },
    CmpItemMenu = { fg = palette.hint_text },
    CmpItemKind = { fg = palette.autocomplete.foreground },
    CmpItemKindVariable = { fg = palette.syntax.default.keyword },
    CmpItemKindField = { fg = palette.syntax.default.constant },
    CmpItemKindProperty = { fg = palette.syntax.default.constant },
    CmpItemKindEnum = { fg = palette.syntax.default.constant },
    CmpItemKindEnumMember = { fg = palette.syntax.default.string },
    CmpItemKindConstant = { fg = palette.syntax.default.keyword },
    CmpItemKindStruct = { fg = palette.syntax.default.constant },
    CmpItemKindMethod = { fg = "#db5c5c" },
    CmpItemKindFunction = { fg = "#db5c5c" },
    CmpItemKindClass = { fg = "#db5c5c" },
    CmpItemKindInterface = { fg = palette.syntax.default.string },
    CmpItemKindModule = { fg = palette.interface.active_element },

    -- custom colours. specified via winhighlight attribute im cmp settings
    CmpNormal = { bg = palette.editor.background },
    CmpFloatBorder = { bg = palette.editor.background, fg = palette.editor.separator },
  }
end

return M
