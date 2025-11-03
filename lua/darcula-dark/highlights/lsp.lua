local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "@lsp.type.struct", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.class", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.macro", { fg = palette.lang.rust.macro })
hi(0, "@lsp.type.decorator", { fg = palette.lang.default.metainfo })
hi(0, "@lsp.type.method", { fg = palette.lang.default.function_call })
hi(0, "@lsp.typemod.method.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.typemod.function.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.type.function", { fg = palette.lang.default.function_call })
hi(0, "@lsp.type.number", { fg = palette.lang.default.number })
hi(0, "@lsp.type.namespace", { fg = palette.lang.default.foreground })
hi(0, "@lsp.type.parameter", { fg = palette.lang.default.foreground })
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
-- https://github.com/stsewd/tree-sitter-comment/issues/22#issuecomment-1575804439
hi(0, "@lsp.type.comment", {})

-- Highlight & Italic static function declaration and invocation
vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    hi(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })
    if token.type == "function" and token.modifiers.static then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "StaticFunction")
    end
  end,
})

-- Rust (rust-analyzer)
hi(0, "@lsp.type.lifetime.rust", { fg = palette.lang.rust.lifetime })
hi(0, "@lsp.typemod.method.unsafe.rust", { bg = palette.lang.rust.unsafe })
hi(0, "@lsp.typemod.function.unsafe.rust", { bg = palette.lang.rust.unsafe })
hi(0, "@lsp.typemod.static.unsafe.rust", { bg = palette.lang.rust.unsafe })
hi(0, "@lsp.typemod.selfKeyword.mutable.rust", { underline = true })
hi(0, "@lsp.typemod.parameter.mutable.rust", { underline = true })
hi(0, "@lsp.typemod.variable.mutable.rust", { underline = true })
hi(0, "@lsp.typemod.static.mutable.rust", { underline = true })

-- Protobuf (buf)
hi(0, "@lsp.type.type.proto", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.decorator.proto", { fg = palette.lang.default.struct })
