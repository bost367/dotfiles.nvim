local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    GitSignsAdd = { fg = palette.gutter_bar.vcs.added_line },
    GitSignsChange = { fg = palette.gutter_bar.vcs.changed_line },
    GitSignsDelete = { fg = palette.gutter_bar.vcs.deleted_line },
    GitSignsChangedelete = { fg = palette.gutter_bar.vcs.changed_delete_line },
  }
end

return M
