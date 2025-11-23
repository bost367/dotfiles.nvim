local M = {}
local palette = require("darcula-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    RenderMarkdownH1 = { fg = palette.interface.cursor_line },
    RenderMarkdownH2 = { fg = palette.interface.cursor_line },
    RenderMarkdownH3 = { fg = palette.interface.cursor_line },
    RenderMarkdownH4 = { fg = palette.interface.cursor_line },
    RenderMarkdownH5 = { fg = palette.interface.cursor_line },
    RenderMarkdownH6 = { fg = palette.interface.cursor_line },
    RenderMarkdownH1Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownH2Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownH3Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownH4Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownH5Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownH6Bg = { fg = palette.syntax.default.foreground, bold = true, underdouble = true },
    RenderMarkdownLink = { fg = palette.syntax.markup.link },
    RenderMarkdownCode = { bg = palette.syntax.markup.code_block },
    RenderMarkdownCodeInline = { bg = palette.syntax.markup.code_block, fg = palette.syntax.default.foreground },
    RenderMarkdownCodeBorder = { bg = palette.editor.separator },
    RenderMarkdownChecked = { fg = palette.syntax.default.foreground },
    RenderMarkdownUnchecked = { fg = palette.syntax.default.foreground },
    RenderMarkdownQuote = { fg = palette.syntax.default.comment },
    RenderMarkdownDash = { fg = palette.editor.fold.bg },
    RenderMarkdownTableHead = { fg = palette.editor.fold.bg },
    RenderMarkdownTableRow = { fg = palette.editor.fold.bg },
  }
end

return M
