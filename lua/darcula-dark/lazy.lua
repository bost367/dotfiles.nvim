local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    LazyNormal = { bg = palette.editor.background },
    LazyButton = { bg = palette.interface.background },
    LazyButtonActive = { bg = palette.interface.active_element },
    LazyH1 = { bg = palette.interface.active_element },
    LazyH2 = { fg = palette.interface.foreground, bold = true },
    LazyProgressTodo = { fg = palette.interface.active_element },
    LazyProgressDone = { fg = palette.interface.active_element },
    LazySpecial = { fg = palette.hint_text },
    LazyProp = { fg = palette.hint_text },
    LazyUrl = { fg = palette.link },
    LazyDir = { fg = palette.hint_text },
  }
end

return M
