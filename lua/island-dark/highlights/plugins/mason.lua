local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    MasonNormal = { bg = palette.editor.background },
    MasonHighlightBlockBold = { bg = palette.interface.active_element },
    MasonMutedBlock = { bg = palette.interface.button },
    MasonMuted = { fg = palette.hint_text },
    MasonHighlight = { fg = palette.link, underline = true },
    MasonHighlightBlock = { bg = palette.interface.active_element },
  }
end

return M
