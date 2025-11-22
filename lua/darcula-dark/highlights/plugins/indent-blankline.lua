local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    IblScope = { fg = palette.editor.indent_scope },
  }
end

return M
