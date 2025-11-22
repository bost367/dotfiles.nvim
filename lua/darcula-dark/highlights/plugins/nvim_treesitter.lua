-- Description per group:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/CONTRIBUTING.md

local M = {}
local palette = require("darcula-dark.palette")

---@return table<string,Highliht>
function M.groups()
  return {
    ["@function"] = { fg = palette.syntax.default.function_declaration },
    ["@function.call"] = { fg = palette.syntax.default.function_call },
    ["@function.builtin"] = { fg = palette.syntax.default.function_call },
    ["@function.macro"] = { fg = palette.syntax.default.metadata },
    ["@function.method"] = { fg = palette.syntax.default.function_declaration },
    ["@function.method.call"] = { fg = palette.syntax.default.function_call },
    ["@constructor"] = { fg = palette.syntax.default.function_call },
    ["@operator"] = { fg = palette.syntax.default.foreground },
    ["@constant"] = { fg = palette.syntax.default.constant, italic = true },
    ["@constant.builtin"] = { fg = palette.syntax.default.constant, italic = true },
    ["@type"] = { fg = palette.syntax.default.foreground },
    ["@type.builtin"] = { fg = palette.syntax.default.keyword },
    ["@module"] = { fg = palette.syntax.default.foreground },
    ["@module.builtin"] = { fg = palette.syntax.default.foreground },
    ["@label"] = { fg = palette.syntax.default.label },
    ["@attribute"] = { fg = palette.syntax.default.metadata },
    ["@property"] = { fg = palette.syntax.default.property },
    ["@boolean"] = { fg = palette.syntax.default.keyword },
    ["@keyword"] = { fg = palette.syntax.default.keyword },
    ["@keyword.conditional.ternary"] = { fg = palette.syntax.default.foreground },
    ["@keyword.directive"] = { fg = palette.syntax.default.foreground, bold = true },
    ["@variable"] = { fg = palette.syntax.default.local_variable },
    ["@variable.builtin"] = { fg = palette.syntax.default.keyword },
    ["@variable.parameter"] = { fg = palette.syntax.default.local_variable },
    ["@variable.parameter.builtin"] = { fg = palette.syntax.default.local_variable },
    ["@variable.member"] = { fg = palette.syntax.default.property },
    ["@string"] = { fg = palette.syntax.default.string },
    ["@character"] = { fg = palette.syntax.default.string },
    ["@character.special"] = { fg = palette.syntax.default.keyword },
    ["@number"] = { fg = palette.syntax.default.number },
    ["@number.float"] = { fg = palette.syntax.default.number },
    ["@punctuation.delimiter"] = { fg = palette.syntax.default.foreground },
    ["@punctuation.bracket"] = { fg = palette.syntax.default.foreground },
    ["@comment"] = { fg = palette.syntax.default.comment },
    ["@comment.documentation"] = { fg = palette.syntax.default.comment_documentation },
    ["@comment.todo"] = { fg = palette.syntax.default.comment_todo, italic = true },
    ["@punctuation.special"] = { fg = palette.syntax.default.foreground },
    ["@tag"] = { fg = "#D5B778" },
    ["@tag.attribute"] = { fg = palette.syntax.default.foreground },
    ["@none"] = { fg = palette.syntax.default.foreground },
    ["@diff.plus"] = { fg = palette.syntax.diff.added },
    ["@diff.minus"] = { fg = palette.syntax.diff.deleted },
    ["@diff.delta"] = { fg = palette.syntax.diff.changed },
    ["StaticFunction"] = { fg = palette.syntax.default.function_declaration, italic = true },

    -- Markup
    ["@markup.italic"] = { fg = palette.syntax.default.foreground },
    ["@markup.strikethrough"] = { fg = palette.syntax.default.foreground },
    ["@markup.underline"] = { fg = palette.syntax.default.foreground },
    ["@markup.strong"] = { fg = palette.syntax.default.foreground },
    ["@markup.heading"] = { fg = palette.syntax.default.constant, italic = true },
    ["@markup.quote"] = { fg = palette.syntax.default.string },
    ["@markup.link"] = { fg = palette.link, underline = true },
    ["@markup.link.label"] = { fg = palette.link, underline = true },
    ["@markup.link.url"] = { fg = palette.link },
    ["@markup.raw"] = { fg = palette.syntax.default.string },
    ["@markup.raw.block"] = { bg = palette.syntax.markup.code_block },
    ["@markup.list"] = { fg = palette.syntax.default.keyword },
    ["@markup.list.checked"] = { fg = palette.syntax.default.keyword },
    ["@markup.list.unchecked"] = { fg = palette.syntax.default.keyword },
    ["@label.markdown"] = { fg = palette.syntax.default.constant, italic = true },
    ["@conceal.markdown_inline"] = { fg = palette.syntax.default.keyword },

    -- Regex
    ["@string.regexp"] = { fg = palette.syntax.default.string },
    ["@string.escape.regex"] = { fg = palette.syntax.regexp.escape, bold = true },

    -- JSON
    ["@property.json"] = { fg = palette.syntax.default.constant },

    -- Toml
    ["@type.toml"] = { fg = palette.syntax.default.keyword },
    ["@property.toml"] = { fg = palette.syntax.default.keyword },

    -- YAML
    ["@label.yaml"] = { fg = palette.syntax.yaml.anchor },
    ["@comment.yaml"] = { fg = palette.syntax.default.comment_documentation },
    ["@punctuation.special.yaml"] = { fg = palette.syntax.default.foreground },
    ["@property.yaml"] = { fg = palette.syntax.default.keyword },

    -- Markdown
    ["@punctuation.special.markdown"] = { fg = palette.syntax.default.keyword },

    -- Bash
    ["@function.call.bash"] = { fg = palette.syntax.bash.cli_call },
    ["@function.builtin.bash"] = { fg = palette.syntax.bash.cli_call },
    ["@punctuation.special.bash"] = { fg = palette.syntax.default.keyword },
    ["@variable.builtin.bash"] = { fg = palette.syntax.default.constant },

    -- XML
    ["@punctuation.delimiter.xml"] = { fg = palette.syntax.default.string },

    -- Protobuf
    ["@string.special.proto"] = { fg = palette.syntax.default.string },

    -- Justfile
    ["@variable.just"] = { fg = palette.syntax.default.constant, italic = true },
    ["@function.just"] = { link = "StaticFunction" },

    -- TypeScript
    ["@function.call.typescript"] = { fg = palette.syntax.default.function_declaration },
    ["@function.method.call.typescript"] = { fg = palette.syntax.default.function_declaration },
    ["@variable.typescript"] = { fg = palette.syntax.ts.local_variable },
    ["@constructor.typescript"] = { fg = palette.syntax.default.keyword },

    -- JavaScript
    ["@function.call.javascript"] = { fg = palette.syntax.default.function_declaration },
    ["@function.method.call.javascript"] = { fg = palette.syntax.default.function_declaration },
    ["@variable.javascript"] = { fg = palette.syntax.ts.local_variable },
    ["@constructor.javascript"] = { fg = palette.syntax.default.keyword },
  }
end

return M
