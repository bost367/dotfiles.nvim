-- File formatting
-- :ConformInfo - see status
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      lua = { "stylua" },
      rust = { "rustfmt" },
      yaml = { "yq" },
      json = { "jq" },
      xml = { "xmllint" },
      ["_"] = { "trim_whitespace", "trim_newlines" },
    },
  },
}
