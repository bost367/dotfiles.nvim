return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              command = "check",
            },
            files = {
              exclude = { "target", ".git", ".idea" },
            },
            -- cargo = {
            --   features = "all",
            -- },
            inlayHints = {
              closingBraceHints = { enable = false },
              parameterHints = { enable = false },
            },
            completion = {
              autoimport = { enable = true },
              fullFunctionSignatures = { enable = true },
              privateEditable = { enable = true },
              callable = { snippets = "add_parentheses" },
              limit = 100,
            },
            workspace = {
              symbol = {
                search = {
                  kind = "all_symbols",
                  scope = "workspace_and_dependencies",
                },
              },
            },
            lens = { enable = false },
          },
        },
      },
    }
  end,
}
