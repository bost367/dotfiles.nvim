return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          backdrop = 100,
          icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
          },
        },
      },
    },
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "bashls",
          "buf_ls",
          "taplo",
          "yamlls",
          "jsonls",
          "just",
          "ts_ls",
          "basedpyright",
          "ruff",
          "nil_ls",
        },
        automatic_enable = {
          exclude = {
            "rust_analyzer", -- Start is delegated to 'rustaceanvim' plugin.
            "taplo", -- Used as formatter. Language server makes nvim freeze on close.
          },
        },
      },
    },
  },
}
