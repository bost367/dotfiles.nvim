local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("biome", {
  capabilities = capabilities,
  workspace_required = false,
})
