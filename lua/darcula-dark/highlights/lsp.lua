local M = {}
local palette = require("darcula-dark.palette")

-- Highlight & Italic static function declaration and invocation
vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    vim.api.nvim_set_hl(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })
    if token.type == "function" and token.modifiers.static then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "StaticFunction")
    end
  end,
})

---@return table<any,Highliht>
function M.groups()
  return {
    ["@lsp.type.struct"] = { fg = palette.lang.default.struct },
    ["@lsp.type.class"] = { fg = palette.lang.default.struct },
    ["@lsp.type.macro"] = { fg = palette.lang.rust.macro },
    ["@lsp.type.decorator"] = { fg = palette.lang.default.metainfo },
    ["@lsp.type.method"] = { fg = palette.lang.default.function_call },
    ["@lsp.typemod.method.declaration"] = { fg = palette.lang.default.function_decaration },
    ["@lsp.typemod.function.declaration"] = { fg = palette.lang.default.function_decaration },
    ["@lsp.type.function"] = { fg = palette.lang.default.function_call },
    ["@lsp.type.number"] = { fg = palette.lang.default.number },
    ["@lsp.type.namespace"] = { fg = palette.lang.default.foreground },
    ["@lsp.type.parameter"] = { fg = palette.lang.default.foreground },
    ["@lsp.type.property"] = { fg = palette.lang.default.constant },
    ["@lsp.type.variable"] = { fg = palette.lang.default.local_variable },
    ["@lsp.type.keyword"] = { fg = palette.lang.default.keyword },
    ["@lsp.type.enumMember"] = { fg = palette.lang.default.constant, italic = true },
    ["@lsp.type.enum"] = { fg = palette.lang.default.struct },
    ["@lsp.type.typeParameter"] = { fg = palette.lang.default.generic },
    ["@lsp.type.formatSpecifier"] = { fg = palette.lang.default.keyword },
    ["@lsp.type.operator"] = { fg = palette.lang.default.keyword },
    ["@lsp.type.builtinType"] = { fg = palette.lang.default.keyword },
    ["@lsp.type.label"] = { fg = palette.lang.default.label },
    -- https://github.com/stsewd/tree-sitter-comment/issues/22#issuecomment-1575804439
    ["@lsp.type.comment"] = {},

    -- Rust (rust-analyzer)
    ["@lsp.type.lifetime.rust"] = { fg = palette.lang.rust.lifetime },
    ["@lsp.typemod.method.unsafe.rust"] = { bg = palette.lang.rust.unsafe },
    ["@lsp.typemod.function.unsafe.rust"] = { bg = palette.lang.rust.unsafe },
    ["@lsp.typemod.static.unsafe.rust"] = { bg = palette.lang.rust.unsafe },
    ["@lsp.typemod.selfKeyword.mutable.rust"] = { underline = true },
    ["@lsp.typemod.parameter.mutable.rust"] = { underline = true },
    ["@lsp.typemod.variable.mutable.rust"] = { underline = true },
    ["@lsp.typemod.static.mutable.rust"] = { underline = true },

    -- Protobuf (buf)
    ["@lsp.type.type.proto"] = { fg = palette.lang.default.keyword },
    ["@lsp.type.decorator.proto"] = { fg = palette.lang.default.struct },
  }
end

return M
