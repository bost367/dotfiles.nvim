local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    RenderMarkdownH1 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH2 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH3 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH4 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH5 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH6 = { fg = palette.syntax.default.foreground },
    RenderMarkdownH1Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownH2Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownH3Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownH4Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownH5Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownH6Bg = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownCode = { bg = palette.render.md.code_bg },
    RenderMarkdownCodeInline = { fg = palette.syntax.default.foreground, bg = palette.render.md.code_bg },
    RenderMarkdownCodeBorder = { bg = palette.render.md.code_bg },
    RenderMarkdownChecked = { fg = palette.syntax.default.foreground },
    RenderMarkdownUnchecked = { fg = palette.syntax.default.foreground },
    RenderMarkdownTodo = { fg = palette.syntax.default.foreground },
    RenderMarkdownBullet = { fg = palette.syntax.default.foreground },
    RenderMarkdownDash = { fg = palette.editor.separator },
    RenderMarkdownTableHead = { fg = palette.syntax.default.foreground, bold = true },
    RenderMarkdownTableRow = { fg = palette.syntax.default.foreground },
    RenderMarkdownQuote = { fg = palette.render.md.quote_indent }, -- left border only
    ["@markup.quote.markdown"] = { fg = palette.syntax.default.foreground },
    -- RenderMarkdownLink is byggy - it is has ho effect
    RenderMarkdownDocComment = { fg = palette.syntax.default.comment_documentation },
  }
end

return M
