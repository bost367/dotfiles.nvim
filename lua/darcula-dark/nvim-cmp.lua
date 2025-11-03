local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    CmpItemAbbr = { fg = palette.editor.foreground },
    CmpItemAbbrDeprecated = { fg = palette.editor.foreground, strikethrough = true },
    CmpItemAbbrMatch = { fg = palette.interface.active_element },
    CmpItemAbbrMatchFuzzy = { fg = palette.interface.active_element },
    CmpItemMenu = { fg = palette.hint_text },
    CmpItemKind = { fg = palette.editor.foreground },
    CmpItemKindVariable = { fg = palette.lang.default.keyword },
    CmpItemKindField = { fg = palette.lang.default.constant },
    CmpItemKindProperty = { fg = palette.lang.default.constant },
    CmpItemKindEnum = { fg = palette.lang.default.constant },
    CmpItemKindEnumMember = { fg = palette.lang.default.string },
    CmpItemKindConstant = { fg = palette.lang.default.keyword },
    CmpItemKindStruct = { fg = palette.lang.default.constant },
    CmpItemKindMethod = { fg = "#db5c5c" },
    CmpItemKindFunction = { fg = "#db5c5c" },
    CmpItemKindClass = { fg = "#db5c5c" },
    CmpItemKindInterface = { fg = palette.lang.default.string },
    CmpItemKindModule = { fg = palette.interface.active_element },

    -- custom colours. specified via winhighlight attribute im cmp settings
    CmpNormal = { bg = palette.editor.background },
    CmpFloatBorder = { bg = palette.editor.background, fg = palette.editor.separator },
  }
end

return M
