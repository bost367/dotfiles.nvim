local M = {}
local palette = require("island-dark.palette")

-- vim.api.nvim_create_autocmd({"FocusGained"}, {
--   pattern = {"*"},
--   callback = function()
--     -- Set background color when Neovim gains focus
--     vim.api.nvim_command('hi Normal guibg=#1e1e1e') -- Example: dark background
--   end
-- })
--
-- vim.api.nvim_create_autocmd({"FocusLost"}, {
--   pattern = {"*"},
--   callback = function()
--     -- Set background color when Neovim loses focus
--     vim.api.nvim_command('hi Normal guibg=#282828') -- Example: slightly lighter dark background
--   end
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = {
--     "dapui_scopes",
--     "dapui_stacks",
--     "dapui_breakpoints",
--     "dapui_scopes",
--     "dapui_watches",
--   },
--   callback = function()
--     vim.api.nvim_set_hl(0, "CursorLine", { bg = palette.interface.cursor_line })
--   end,
-- })

---@return table<any,Highliht>
function M.groups()
  return {
    DapUINormal = { bg = palette.editor.background, fg = palette.editor.foreground },
    DapUIFloatNormal = { bg = palette.interface.background, fg = palette.interface.foreground },
    DapUIFloatBorder = { bg = palette.interface.background, fg = palette.editor.separator },

    -- stack window
    DapUIStoppedThread = { fg = palette.interface.foreground },
    DapUIFrame = { fg = palette.interface.foreground },
    DapUIFrameName = { fg = palette.syntax.default.foreground },
    DapUISource = { fg = "#808080", italic = true }, -- filename
    DapUILineNumber = { fg = "#808080", italic = true },
    DapUIBreakpointsCurrentLine = { fg = palette.gutter_bar.breackpoint_stop },

    -- breckpoint window
    DapUIBreakpointsPath = { fg = "#B8B8B9" },
    DapUIBreakpointsLine = { fg = palette.gutter_bar.line_number },
    DapUIBreakpointsDisabledLine = { fg = palette.gutter_bar.line_number },
    DapUIDecoration = { fg = palette.icons.default },

    -- scope window
    DapUIScope = { fg = "#B8B8B9", bold = true }, -- header
    DapUIType = { fg = palette.hint_text },
    DapUIValue = { fg = palette.interface.foreground },
    DapUIVariable = { fg = "#F0AC81" },
    DapUIModifiedValue = { fg = palette.syntax.diff.changed },

    -- watches window
    DapUIWatchesEmpty = { fg = "#B8B8B9", bold = true }, -- header
    -- DapUIWatchesValue = { fg = palette.icons.default },
    -- DapUIWatchesError = { fg = palette.icons.default },

    -- icons
    DapUIStepOver = { fg = palette.icons.default },
    -- DapUIStepOverNC = { link = "DapUIStepOver" },
    DapUIStepInto = { fg = palette.icons.default },
    -- DapUIStepIntoNC = { link = "DapUIStepInto" },
    DapUIStepBack = { fg = palette.icons.default },
    -- DapUIStepBackNC = { link = "DapUIStepBack" },
    DapUIStepOut = { fg = palette.icons.default },
    -- DapUIStepOutNC = { link = "DapUIStepOut" },
    DapUIStop = { fg = palette.gutter_bar.breackpoint },
    -- DapUIStopNC = { link = "DapUIStop" },
    DapUIPlayPause = { fg = palette.gutter_bar.run },
    -- DapUIPlayPauseNC = { link = "DapUIPlayPause" },
    DapUIRestart = { fg = palette.icons.default },
    -- DapUIRestartNC = { link = "DapUIRestart" },
    DapUIUnavailable = { fg = palette.icons.default },
    -- DapUIUnavailableNC = { link = "DapUIUnavailable" },

    -- DapUIEndofBuffer = { fg = palette.icons.yaml, bg = palette.icons.yaml },
    -- DapUIWinSelect = { fg = palette.icons.yaml, bg = palette.icons.yaml },
    -- DapUIThread  = { fg = palette.icons.yaml, bg = palette.icons.yaml },
    -- DapUIBreakpointsInfo = { fg = palette.icons.yaml, bg = palette.icons.yaml },
    -- DapUICurrentFrameName = { fg = palette.icons.yaml, bg = palette.icons.yaml },
  }
end

return M
