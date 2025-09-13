local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "@function", { fg = palette.lang.default.function_decaration })
hi(0, "@function.call", { fg = palette.lang.default.function_call })
hi(0, "@function.builtin", { fg = palette.lang.default.function_call })
hi(0, "@function.macro", { fg = palette.lang.rust.macro })
hi(0, "@function.method", { fg = palette.lang.default.function_decaration })
hi(0, "@function.method.call", { fg = palette.lang.default.function_call })
hi(0, "@constructor", { fg = palette.lang.default.function_call })
hi(0, "@operator", { fg = palette.lang.default.text })
hi(0, "@constant", { fg = palette.lang.default.constant, italic = true })
hi(0, "@constant.builtin", { fg = palette.lang.default.constant, italic = true })
hi(0, "@type", { fg = palette.lang.default.text })
hi(0, "@type.builtin", { fg = palette.lang.default.struct })
hi(0, "@module", { fg = palette.lang.default.text })
hi(0, "@module.builtin", { fg = palette.lang.default.text })
hi(0, "@label", { fg = palette.lang.default.label })
hi(0, "@keyword", { fg = palette.lang.default.keyword })
hi(0, "@attribute", { fg = palette.lang.rust.lifetime })
hi(0, "@property", { fg = palette.lang.default.property })
hi(0, "@boolean", { fg = palette.lang.default.keyword })
hi(0, "@keyword.function", { fg = palette.lang.default.keyword })
hi(0, "@keyword.return", { fg = palette.lang.default.keyword })
hi(0, "@keyword.operator", { fg = palette.lang.default.keyword })
hi(0, "@variable", { fg = palette.lang.default.local_variable })
hi(0, "@variable.builtin", { fg = palette.lang.default.keyword })
hi(0, "@variable.parameter", { fg = palette.lang.default.local_variable })
hi(0, "@variable.parameter.builtin", { fg = palette.lang.default.local_variable })
hi(0, "@variable.member", { fg = palette.lang.default.constant })
hi(0, "@string", { fg = palette.lang.default.str })
hi(0, "@character", { fg = palette.lang.default.str })
hi(0, "@character.special", { fg = palette.lang.default.keyword })
hi(0, "@number", { fg = palette.lang.default.digit })
hi(0, "@number.float", { fg = palette.lang.default.digit })
hi(0, "@punctuation.delimiter", { fg = palette.lang.default.text })
hi(0, "@punctuation.bracket", { fg = palette.lang.default.text })
hi(0, "@comment", { fg = palette.lang.default.comment })
hi(0, "@comment.documentation", { fg = palette.lang.default.comment_documentation })
hi(0, "@comment.todo", { fg = palette.lang.default.comment_todo })
hi(0, "@spell.markdown", { fg = palette.lang.default.text })
hi(0, "@markup.italic", { fg = palette.lang.default.text })
hi(0, "@markup.strikethrough", { fg = palette.lang.default.text })
hi(0, "@markup.underline", { fg = palette.lang.default.text })
hi(0, "@markup.strong", { fg = palette.lang.default.text })
hi(0, "@markup.heading", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.1", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.2", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.3", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.4", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.5", { fg = palette.lang.default.constant })
hi(0, "@markup.heading.6", { fg = palette.lang.default.constant })
hi(0, "@markup.quote", { fg = palette.lang.default.str })
hi(0, "@markup.link", { fg = palette.link })
hi(0, "@markup.link.label", { fg = palette.link })
hi(0, "@markup.link.url", { fg = palette.link })
hi(0, "@markup.raw", { fg = palette.lang.default.str })
hi(0, "@markup.raw.block", { fg = palette.lang.default.str })
hi(0, "@markup.list", { fg = palette.lang.default.keyword })
hi(0, "@markup.list.checked", { fg = palette.lang.default.keyword })
hi(0, "@markup.list.unckecked", { fg = palette.lang.default.keyword })
hi(0, "@punctuation.special", { fg = palette.lang.default.text })
hi(0, "@tag", { fg = "#D5B778" })
hi(0, "@tag.attribute", { fg = palette.lang.default.text })
hi(0, "@diff.plus", { fg = palette.lang.diff.added })
hi(0, "@diff.minus", { fg = palette.lang.diff.deleted })
hi(0, "@diff.delta", { fg = palette.lang.diff.changed })
hi(0, "@none", { fg = palette.lang.default.text })

-- JSON
hi(0, "@property.json", { fg = palette.lang.default.constant })

-- Toml
hi(0, "@type.toml", { fg = palette.lang.default.keyword })
hi(0, "@property.toml", { fg = palette.lang.default.keyword })

-- YAML
hi(0, "@label.yaml", { fg = palette.lang.rust.macro })
hi(0, "@comment.yaml", { fg = palette.lang.default.comment_documentation })
hi(0, "@punctuation.special.yaml", { fg = palette.lang.default.text })
hi(0, "@property.yaml", { fg = palette.lang.default.keyword })

-- Markdow
hi(0, "@punctuation.special.markdown", { fg = palette.lang.default.keyword })

-- Bash
hi(0, "@function.call.bash", { fg = palette.lang.bash.builtin })
hi(0, "@function.builtin.bash", { fg = palette.lang.bash.builtin })
hi(0, "@keyword.directive.bash", { fg = palette.lang.default.text, bold = true })
hi(0, "@punctuation.special.bash", { fg = palette.lang.default.keyword })
hi(0, "@variable.builtin.bash", { fg = palette.lang.default.constant })

-- Kotlin
hi(0, "@attribute.kotlin", { fg = palette.lang.default.metadata })

-- XML
hi(0, "@punctuation.delimiter.xml", { fg = palette.lang.default.str })

-- Protobuf
hi(0, "@string.special.proto", { fg = palette.lang.default.str })

-- Rust
hi(0, "@function.macro.rust", { fg = palette.lang.default.metadata })
