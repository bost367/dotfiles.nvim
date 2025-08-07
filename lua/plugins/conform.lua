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
      proto = { "buf" },
      toml = { "taplo" },
      ["_"] = { "trim_whitespace", "trim_newlines" },
    },
    formatters = {
      taplo = {
        args = { "format", "--option", "array_auto_collapse=false", "-" },
      },
    },
  },
}
