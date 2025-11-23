local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    RenderMarkdownH1 = { fg = palette.editor.foreground },
    RenderMarkdownH2 = { fg = palette.editor.foreground },
    RenderMarkdownH3 = { fg = palette.editor.foreground },
    RenderMarkdownH4 = { fg = palette.editor.foreground },
    RenderMarkdownH5 = { fg = palette.editor.foreground },
    RenderMarkdownH6 = { fg = palette.editor.foreground },
    RenderMarkdownH1Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownH2Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownH3Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownH4Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownH5Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownH6Bg = { fg = palette.editor.foreground, bold = true },
    RenderMarkdownCode = { bg = "#303236" },
    RenderMarkdownLink = { fg = "#6A9BFA" },
    RenderMarkdownCodeInline = { bg = "#303236", fg = palette.syntax.default.foreground },
    RenderMarkdownUnchecked = { fg = palette.syntax.default.foreground },
    RenderMarkdownChecked = { fg = palette.syntax.default.foreground },

    -- RenderMarkdownCodeInline = { bg = "#2C2D30", fg = "#BCBEC4" }, -- iland
    -- RenderMarkdownCode = { bg = "#2C2D30" }, -- iland
  }
end

return M
