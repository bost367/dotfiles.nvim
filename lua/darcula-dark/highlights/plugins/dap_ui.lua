local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    -- DapUINormal = { bg = palette.editor.background, fg = palette.editor.foreground },
    DapUINormal = { bg = palette.interface.background, fg = palette.editor.foreground },
    DapUIFloatNormal = { bg = palette.interface.background, fg = palette.interface.foreground },
    DapUIFloatBorder = { bg = palette.interface.background, fg = palette.editor.separator },

    -- stack window
    DapUIStoppedThread = { fg = palette.interface.foreground },
    DapUIFrame = { fg = palette.interface.foreground },
    DapUIFrameName = { fg = palette.syntax.default.foreground },
    DapUISource = { fg = "#808080", italic = true }, -- filename
    DapUILineNumber = { fg = "#808080", italic = true },

    -- breckpoint window
    DapUIBreakpointsPath = { fg = "#B8B8B9" },
    DapUIBreakpointsLine = { fg = palette.gutter_bar.line_number },
    DapUIBreakpointsCurrentLine = { fg = palette.interface.foreground, bg = palette.interface.cursor_line },
    DapUIBreakpointsDisabledLine = { fg = palette.gutter_bar.line_number },
    DapUIDecoration = { fg = palette.icons.default },

    -- scope window
    DapUIScope = { fg = "#B8B8B9", bold = true }, -- heaer
    DapUIType = { fg = palette.hint_text },
    DapUIValue = { fg = palette.interface.foreground },
    DapUIVariable = { fg = "#F0AC81" },
    DapUIModifiedValue = { fg = palette.syntax.diff.changed },

    -- df
    DapUIWatchesEmpty = { fg = palette.interface.foreground, bold = true },

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
  }
end

return M
