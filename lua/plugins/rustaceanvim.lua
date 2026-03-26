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
            inlayHints = {
              closingBraceHints = { enable = false },
              parameterHints = { enable = false },
            },
            completion = {
              fullFunctionSignatures = { enable = true },
              callable = { snippets = "add_parentheses" },
              limit = 100,
            },
            lens = { enable = false },
          },
        },
      },
    }
  end,
}
