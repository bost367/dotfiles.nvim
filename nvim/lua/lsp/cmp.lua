local ELLIPSIS_CHAR = "…"
local MAX_LABEL_WIDTH = 40
local MIN_LABEL_WIDTH = 40
local lspkind = require("lspkind")
local cmp = require("cmp")

local kind_icons = {
	Text = " ",
	Method = "󰰑 ",
	Function = "󰯼 ",
	Constructor = " ",
	Field = "󰯺 ",
	Variable = "󰰚 ",
	Class = "󰯳 ",
	Interface = "󰯹 ",
	Module = "󰰏  ",
	Property = "󰰪 ",
	Unit = " ",
	Value = "󰎠 ",
	Enum = "󰯷 ",
	Keyword = "󰌋 ",
	Snippet = " ",
	Color = "󰏘 ",
	File = " ",
	Reference = " ",
	Folder = " ",
	EnumMember = "󰯷 ",
	Constant = "󰯱 ",
	Struct = "󰰡  ",
	Event = " ",
	Operator = "󰆕 ",
	TypeParameter = "󰅲 ",
}
require("cmp").setup({
	performance = {
		max_view_entries = 10,
	},
	formatting = {
		fields = { cmp.ItemField.Kind, cmp.ItemField.Abbr },
		format = lspkind.cmp_format({
			mode = "symbol",
			symbol_map = kind_icons,
			preset = "default",
			maxwidth = 50,
			ellipsis_char = "...",
			show_labelDetails = true, -- show labelDetails in menu. Disabled by default
			before = function(entry, vim_item)
				-- https://github.com/hrsh7th/nvim-cmp/issues/980#issuecomment-1121773499
				local label = vim_item.abbr
				local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
				if truncated_label ~= label then
					vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
				elseif string.len(label) < MIN_LABEL_WIDTH then
					local padding = string.rep(" ", MIN_LABEL_WIDTH - string.len(label))
					vim_item.abbr = label .. padding
				end
				-- https://github.com/hrsh7th/nvim-cmp/issues/980#issuecomment-1882213992
				vim_item.menu = ""
				return vim_item
			end,
		}),
	},
	window = {
		completion = cmp.config.window.bordered({
			rorder = "rounded",
			winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
		}),
		documentation = {
			border = "rounded",
			winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
		},
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = {
		{ name = "nvim_lsp" },
	},
})
