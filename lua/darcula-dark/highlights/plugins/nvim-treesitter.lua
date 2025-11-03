local M = {}
local palette = require("darcula-dark.palette")

---@return table<string,Highliht>
function M.groups()
  return {
    ["@function"] = { fg = palette.lang.default.function_decaration },
    ["@function.call"] = { fg = palette.lang.default.function_call },
    ["@function.builtin"] = { fg = palette.lang.default.function_call },
    ["@function.macro"] = { fg = palette.lang.rust.macro },
    ["@function.method"] = { fg = palette.lang.default.function_decaration },
    ["@function.method.call"] = { fg = palette.lang.default.function_call },
    ["@constructor"] = { fg = palette.lang.default.function_call },
    ["@operator"] = { fg = palette.lang.default.foreground },
    ["@constant"] = { fg = palette.lang.default.constant, italic = true },
    ["@constant.builtin"] = { fg = palette.lang.default.constant, italic = true },
    ["@type"] = { fg = palette.lang.default.foreground },
    ["@type.builtin"] = { fg = palette.lang.default.struct },
    ["@module"] = { fg = palette.lang.default.foreground },
    ["@module.builtin"] = { fg = palette.lang.default.foreground },
    ["@label"] = { fg = palette.lang.default.label },
    ["@keyword"] = { fg = palette.lang.default.keyword },
    ["@attribute"] = { fg = palette.lang.rust.lifetime },
    ["@property"] = { fg = palette.lang.default.property },
    ["@boolean"] = { fg = palette.lang.default.keyword },
    ["@keyword.function"] = { fg = palette.lang.default.keyword },
    ["@keyword.return"] = { fg = palette.lang.default.keyword },
    ["@keyword.operator"] = { fg = palette.lang.default.keyword },
    ["@variable"] = { fg = palette.lang.default.local_variable },
    ["@variable.builtin"] = { fg = palette.lang.default.keyword },
    ["@variable.parameter"] = { fg = palette.lang.default.local_variable },
    ["@variable.parameter.builtin"] = { fg = palette.lang.default.local_variable },
    ["@variable.member"] = { fg = palette.lang.default.constant },
    ["@string"] = { fg = palette.lang.default.string },
    ["@character"] = { fg = palette.lang.default.string },
    ["@character.special"] = { fg = palette.lang.default.keyword },
    ["@number"] = { fg = palette.lang.default.number },
    ["@number.float"] = { fg = palette.lang.default.number },
    ["@punctuation.delimiter"] = { fg = palette.lang.default.foreground },
    ["@punctuation.bracket"] = { fg = palette.lang.default.foreground },
    ["@comment"] = { fg = palette.lang.default.comment },
    ["@comment.documentation"] = { fg = palette.lang.default.comment_documentation },
    ["@comment.todo"] = { fg = palette.lang.default.comment_todo },
    ["@spell.markdown"] = { fg = palette.lang.default.foreground },
    ["@markup.italic"] = { fg = palette.lang.default.foreground },
    ["@markup.strikethrough"] = { fg = palette.lang.default.foreground },
    ["@markup.underline"] = { fg = palette.lang.default.foreground },
    ["@markup.strong"] = { fg = palette.lang.default.foreground },
    ["@markup.heading"] = { fg = palette.lang.default.constant },
    ["@markup.heading.1"] = { fg = palette.lang.default.constant },
    ["@markup.heading.2"] = { fg = palette.lang.default.constant },
    ["@markup.heading.3"] = { fg = palette.lang.default.constant },
    ["@markup.heading.4"] = { fg = palette.lang.default.constant },
    ["@markup.heading.5"] = { fg = palette.lang.default.constant },
    ["@markup.heading.6"] = { fg = palette.lang.default.constant },
    ["@markup.quote"] = { fg = palette.lang.default.string },
    ["@markup.link"] = { fg = palette.link },
    ["@markup.link.label"] = { fg = palette.link },
    ["@markup.link.url"] = { fg = palette.link },
    ["@markup.raw"] = { fg = palette.lang.default.string },
    ["@markup.raw.block"] = { fg = palette.lang.default.string },
    ["@markup.list"] = { fg = palette.lang.default.keyword },
    ["@markup.list.checked"] = { fg = palette.lang.default.keyword },
    ["@markup.list.unckecked"] = { fg = palette.lang.default.keyword },
    ["@punctuation.special"] = { fg = palette.lang.default.foreground },
    ["@tag"] = { fg = "#D5B778" },
    ["@tag.attribute"] = { fg = palette.lang.default.foreground },
    ["@none"] = { fg = palette.lang.default.foreground },
    ["@diff.plus"] = { fg = palette.lang.diff.added },
    ["@diff.minus"] = { fg = palette.lang.diff.deleted },
    ["@diff.delta"] = { fg = palette.lang.diff.changed },

    -- JSON
    ["@property.json"] = { fg = palette.lang.default.constant },

    -- Toml
    ["@type.toml"] = { fg = palette.lang.default.keyword },
    ["@property.toml"] = { fg = palette.lang.default.keyword },

    -- YAML
    ["@label.yaml"] = { fg = palette.lang.rust.macro },
    ["@comment.yaml"] = { fg = palette.lang.default.comment_documentation },
    ["@punctuation.special.yaml"] = { fg = palette.lang.default.foreground },
    ["@property.yaml"] = { fg = palette.lang.default.keyword },

    -- Markdow
    ["@punctuation.special.markdown"] = { fg = palette.lang.default.keyword },

    -- Bash
    ["@function.call.bash"] = { fg = palette.lang.bash.builtin },
    ["@function.builtin.bash"] = { fg = palette.lang.bash.builtin },
    ["@keyword.directive.bash"] = { fg = palette.lang.default.foreground, bold = true },
    ["@punctuation.special.bash"] = { fg = palette.lang.default.keyword },
    ["@variable.builtin.bash"] = { fg = palette.lang.default.constant },

    -- Kotlin
    ["@attribute.kotlin"] = { fg = palette.lang.default.metadata },

    -- XML
    ["@punctuation.delimiter.xml"] = { fg = palette.lang.default.string },

    -- Protobuf
    ["@string.special.proto"] = { fg = palette.lang.default.string },

    -- Rust
    ["@function.macro.rust"] = { fg = palette.lang.default.metadata },
  }
end

return M
