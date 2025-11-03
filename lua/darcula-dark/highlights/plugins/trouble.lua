local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    TroubleCount = { fg = palette.hint_text },
    TroubleFilename = { fg = palette.interface.foreground },
    TroublePos = { fg = palette.hint_text },
    TroubleNormal = { bg = palette.interface.background },
  }
end

return M
