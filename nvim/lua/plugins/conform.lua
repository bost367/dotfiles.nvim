-- File formatting
return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt", lsp_format = "fallback" },
			["_"] = { "trim_whitespace", "trim_newlines" },
		},
	},
}
