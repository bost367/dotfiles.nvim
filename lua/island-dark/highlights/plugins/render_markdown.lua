local M = {}
local palette = require("island-dark.palette")

local doc_comment = {
  fg = palette.syntax.default.comment_documentation,
  link = "#3887A1",
}

local md = {
  fg = palette.syntax.default.foreground,
  dash = palette.editor.separator,
  link = "#548AF7",
  quote = { indent = "#455981" },
  code_bg = "#2B2D30",
  inline = { fg = palette.syntax.default.foreground, bg = "#343539" },
}

-- local render = doc_comment
local render = md

---@return table<any,Highliht>
function M.groups()
  return {
    RenderMarkdownH1 = { fg = render.fg },
    RenderMarkdownH2 = { fg = render.fg },
    RenderMarkdownH3 = { fg = render.fg },
    RenderMarkdownH4 = { fg = render.fg },
    RenderMarkdownH5 = { fg = render.fg },
    RenderMarkdownH6 = { fg = render.fg },
    RenderMarkdownH1Bg = { fg = render.fg, bold = true },
    RenderMarkdownH2Bg = { fg = render.fg, bold = true },
    RenderMarkdownH3Bg = { fg = render.fg, bold = true },
    RenderMarkdownH4Bg = { fg = render.fg, bold = true },
    RenderMarkdownH5Bg = { fg = render.fg, bold = true },
    RenderMarkdownH6Bg = { fg = render.fg, bold = true },
    RenderMarkdownCode = { bg = render.code_bg },
    RenderMarkdownCodeInline = { fg = render.inline.fg, bg = render.inline.bg },
    RenderMarkdownCodeBorder = { bg = render.code_bg },
    RenderMarkdownChecked = { fg = render.fg },
    RenderMarkdownUnchecked = { fg = render.fg },
    RenderMarkdownTodo = { fg = render.fg },
    RenderMarkdownBullet = { fg = render.fg },
    RenderMarkdownDash = { fg = render.dash },
    RenderMarkdownTableHead = { fg = render.fg, bold = true },
    RenderMarkdownTableRow = { fg = render.fg },

    RenderMarkdownQuote = { fg = render.quote.indent }, -- left border only
    ["@markup.quote.markdown"] = { fg = render.fg },
    ["@markup.raw.block.markdown"] = { fg = render.fg }, -- text inside code blocks

    -- RenderMarkdownLink is byggy - it is has ho effect
    ["@markup.link.url.markdown_inline"] = { fg = doc_comment.link, underline = true },
    ["@markup.link.label.markdown_inline"] = { fg = doc_comment.link, underline = true },
    ["@markup.link.url.markdown"] = { fg = doc_comment.link, underline = true },
    ["@markup.link.label.markdown"] = { fg = doc_comment.link, underline = true },

    RenderMarkdownDocComment = { fg = doc_comment.fg },
  }
end

return M
