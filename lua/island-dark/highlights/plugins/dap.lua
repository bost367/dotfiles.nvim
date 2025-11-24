local M = {}
local palette = require("island-dark.palette")

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpointColor" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopColor" })
vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DapBreakpointColor" })
vim.fn.sign_define("DapBreakpointRejected", { text = "󰜋", texthl = "DapBreakpointColor" })
vim.fn.sign_define("DapLogPoint", { text = "󰍡", texthl = "DapBreakpointColor" })

---@return table<any,Highliht>
function M.groups()
  return {
    DapBreakpointColor = { fg = palette.gutter_bar.breackpoint },
    DapStopColor = { fg = palette.gutter_bar.breackpoint_stop },
  }
end

return M
