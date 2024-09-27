local cmd = vim.cmd
local hi = vim.api.nvim_set_hl

--cmd.colorscheme("darcula-dark")
local palette = require("darcula-dark.palette")

-- custom 
hi(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })

-- colors overriding
hi(0, "CursorLine", { bg = "#26282E", ctermbg = 1 })
hi(0, "ColorColumn", { bg = "#393B40", ctermbg = 1 })
hi(0, "Normal", { bg = palette.editor.background, ctermbg = 1 })
hi(0, "LineNr", { fg = "#474B54" })
hi(0, "CursorLine", { bg = palette.editor.cursor_lne})
hi(0, "CursorLineNr", { bg = palette.editor.cursor_lne})
hi(0, "Visual", { bg = palette.editor.select })

-- gitsign
hi(0, "GitGutterAdd", { fg = palette.editor.vcs.added_line })
hi(0, "GitGutterChange", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterChangeDelete", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterDelete", { fg = palette.editor.vcs.deleted_line })

-- diagnostics
hi(0, "DiagnosticError", { ctermfg = 1, fg = palette.editor.diagnostic.error })
hi(0, "DiagnosticHint", { ctermfg = 7, fg = palette.editor.diagnostic.warn })
hi(0, "DiagnosticWarn", { ctermfg = 7, fg = palette.editor.diagnostic.weak_warn })
hi(0, "DiagnosticInfo", { ctermfg = 4, fg = palette.editor.diagnostic.error })

-- scrollbar
hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = palette.editor.vcs.added_line })

-- tree-sitter. use :h `treesitter-highlight-groups` to see all groupd
hi(0, "@function", { fg = palette.lang.default.function_decaration })
hi(0, "@function.call", { fg = palette.lang.default.function_call })
hi(0, "@function.builtin", { fg = palette.lang.default.function_call })
hi(0, "@function.macro", { fg = "#FFC66D" })
hi(0, "@function.method", { fg = palette.lang.default.function_decaration })
hi(0, "@function.method.call", { fg = palette.lang.default.function_call })
hi(0, "@constructor", { fg = palette.lang.default.function_call })
hi(0, "@operator", { fg = palette.lang.default.text })
hi(0, "@constant", { fg = palette.lang.default.constant, italic = true })
hi(0, "@constant.builtin", { fg = palette.lang.default.constant, italic = true })
hi(0, "@type", { fg = palette.lang.default.text })
hi(0, "@type.builtin", { fg = palette.lang.default.struct })
hi(0, "@module", { fg = palette.lang.default.text })
hi(0, "@label", { fg = palette.lang.default.label })
hi(0, "@keyword", { fg = palette.lang.default.keyword })
hi(0, "@attribute", { fg = "#20999D" })
hi(0, "@property", { fg = palette.lang.default.keyword })
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
hi(0, "@number", { fg = palette.lang.default.digit })
hi(0, "@number.float", { fg = palette.lang.default.digit })
hi(0, "@punctuation.delimiter", { fg = palette.lang.default.text })
hi(0, "@punctuation.bracket", { fg = palette.lang.default.text })
hi(0, "@comment", { fg = palette.lang.default.comment })
hi(0, "@comment.documentation", { fg = palette.lang.default.comment_documentation })
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
hi(0, "@markup.link", { fg = "#56A8F5" })
hi(0, "@markup.link.label", { fg = "#56A8F5" })
hi(0, "@markup.link.url", { fg = "#56A8F5" })
hi(0, "@markup.raw", { fg = palette.lang.default.str })
hi(0, "@markup.raw.block", { fg = palette.lang.default.str })
hi(0, "@markup.list", { fg = palette.lang.default.keyword })
hi(0, "@markup.list.checked", { fg = palette.lang.default.keyword })
hi(0, "@markup.list.unckecked", { fg = palette.lang.default.keyword })
hi(0, "@punctuation.special", { fg = palette.lang.default.text })
hi(0, "@tag", { fg = "#D5B778" })
hi(0, "@tag.attribute", { fg = palette.lang.default.text })

-- JSON
hi(0, "@property.json", { fg = palette.lang.default.constant })

-- Toml
hi(0, "@type.toml", { fg = palette.lang.default.keyword })

-- YAML
hi(0, "@label.yaml", { fg = "#FFC66D" })
hi(0, "@comment.yaml", { fg = palette.lang.default.comment_documentation })
hi(0, "@punctuation.special.yaml", { fg = palette.lang.default.text })

-- Markdow
hi(0, "@punctuation.special.markdown", { fg = palette.lang.default.keyword })

-- lsp. use `:h lsp-semantic-highlight` to see all tokens 
hi(0, "@lsp.type.struct", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.class", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.macro", { fg = "#FFC66D" })
hi(0, "@lsp.type.decorator", { fg = palette.lang.default.metainfo })
hi(0, "@lsp.type.method", { fg = palette.lang.default.function_call })
hi(0, "@lsp.typemod.method.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.typemod.function.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.type.function", { fg = palette.lang.default.function_call })
hi(0, "@lsp.type.number", { fg = palette.lang.default.digit })
hi(0, "@lsp.type.namespace", { fg = palette.lang.default.text })
hi(0, "@lsp.type.parameter", { fg = palette.lang.default.text })
hi(0, "@lsp.type.property", { fg = palette.lang.default.constant })
hi(0, "@lsp.type.variable", { fg = palette.lang.default.local_variable })
hi(0, "@lsp.type.keyword", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.enumMember", { fg = palette.lang.default.constant, italic = true })
hi(0, "@lsp.type.enum", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.typeParameter", { fg = palette.lang.default.generic })
hi(0, "@lsp.type.formatSpecifier", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.operator", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.builtinType", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.label", { fg = palette.lang.default.label })

-- Highlight & Italic static function declaration and invocation
vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    if token.type == "function" and token.modifiers.static then
      vim.lsp.semantic_tokens.highlight_token(
        token, args.buf, args.data.client_id, "StaticFunction")
    end
  end
})

-- Rust
hi(0, "MutableLocalVariable", { fg = palette.lang.default.local_variable, underline = true })
hi(0, "MutableStaticVariable", { fg = palette.lang.default.constant, underline = true })
hi(0, "MutablelSelfParameter", { fg = palette.lang.default.keyword, underline = true })

hi(0, "@lsp.type.lifetime.rust", { fg = palette.lang.rust.lifetime })

-- Underscore mutable variables
vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    if token.modifiers.mutable then
      if token.type == "selfKeyword" then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "MutablelSelfParameter")
      elseif token.type == "variable" then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "MutableLocalVariable")
      elseif token.type == "static" then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "MutableStaticVariable")
      end
    end
  end
})

-- cmp
hi(0, "Pmenu", { bg = palette.interface.background })
hi(0, "PmenuSel", {  bg = palette.interface.cursor_line})

