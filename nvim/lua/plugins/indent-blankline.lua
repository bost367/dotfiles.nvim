-- Vertical lines between brackets in editor
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = { char = "│" },
		scope = { enabled = false },
	},
}
