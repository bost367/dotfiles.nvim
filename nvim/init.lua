require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.commands")
require("darcula-dark")
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "bashls",
  },
})
require("lsp")
