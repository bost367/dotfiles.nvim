local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    IlluminatedWordText = { bg = palette.editor.under_corsour },
    IlluminatedWordRead = { bg = palette.editor.under_corsour },
    IlluminatedWordWrite = { bg = palette.editor.under_corsour },
  }
end

return M
