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
          "buf",
          "taplo",
          "yamlls",
        },
        automatic_enable = {
          exclude = {
            "rust_analyzer",
          },
        },
      },
    },
  },
}
