local M = {}
local palette = require("darcula-dark.palette")

-- Highlight & Italic static function declaration and invocation
vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    if token.type == "function" and token.modifiers.static then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "StaticFunction")
    end
  end,
})

---@return table<any,Highliht>
function M.groups()
  return {
    ["@lsp.type.struct"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.class"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.macro"] = { fg = palette.syntax.rust.macro },
    ["@lsp.type.decorator"] = { fg = palette.syntax.default.metainfo },
    ["@lsp.type.method"] = { fg = palette.syntax.default.function_call },
    ["@lsp.typemod.method.declaration"] = { fg = palette.syntax.default.function_decaration },
    ["@lsp.typemod.function.declaration"] = { fg = palette.syntax.default.function_decaration },
    ["@lsp.type.function"] = { fg = palette.syntax.default.function_call },
    ["@lsp.type.number"] = { fg = palette.syntax.default.number },
    ["@lsp.type.namespace"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.parameter"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.property"] = { fg = palette.syntax.default.constant },
    ["@lsp.type.variable"] = { fg = palette.syntax.default.local_variable },
    ["@lsp.type.keyword"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.enumMember"] = { fg = palette.syntax.default.constant, italic = true },
    ["@lsp.type.enum"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.typeParameter"] = { fg = palette.syntax.default.generic },
    ["@lsp.type.formatSpecifier"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.operator"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.builtinType"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.label"] = { fg = palette.syntax.default.label },
    -- https://github.com/stsewd/tree-sitter-comment/issues/22#issuecomment-1575804439
    ["@lsp.type.comment"] = {},

    -- Rust (rust-analyzer)
    ["@lsp.type.lifetime.rust"] = { fg = palette.syntax.rust.lifetime },
    ["@lsp.typemod.method.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.function.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.static.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.selfKeyword.mutable.rust"] = { underline = true },
    ["@lsp.typemod.parameter.mutable.rust"] = { underline = true },
    ["@lsp.typemod.variable.mutable.rust"] = { underline = true },
    ["@lsp.typemod.static.mutable.rust"] = { underline = true },

    -- Protobuf (buf)
    ["@lsp.type.type.proto"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.decorator.proto"] = { fg = palette.syntax.default.struct },
  }
end

return M
