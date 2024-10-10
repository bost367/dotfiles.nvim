-- File formatting
-- :ConformInfo - see status
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt", lsp_format = "fallback" },
      yaml = { "yq" },
      json = { "jq" },
      xml = { "xmllint" },
      ["_"] = { "trim_whitespace", "trim_newlines" },
    },
  },
}
