local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    IlluminatedWordText = { bg = palette.editor.scope.same_token },
    IlluminatedWordRead = { bg = palette.editor.scope.read_variable },
    IlluminatedWordWrite = { bg = palette.editor.scope.write_variable },
  }
end

return M
