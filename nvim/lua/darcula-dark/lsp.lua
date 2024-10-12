local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

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
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "StaticFunction")
    end
  end,
})

-- Rust
hi(0, "MutableLocalVariable", { fg = palette.lang.default.local_variable, underline = true })
hi(0, "MutableStaticVariable", { fg = palette.lang.default.constant, underline = true })
hi(0, "MutablelSelfParameter", { fg = palette.lang.default.keyword, underline = true })

hi(0, "@lsp.type.lifetime.rust", { fg = palette.lang.rust.lifetime })
hi(0, "@lsp.type.selfTypeKeyword.rust" , { fg = palette.lang.default.keyword })

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
  end,
})
