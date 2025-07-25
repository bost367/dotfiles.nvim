require("darcula-dark.theme")
require("darcula-dark.treesitter")
require("darcula-dark.lsp")
require("darcula-dark.cmp")
require("darcula-dark.gitsigns")
require("darcula-dark.scrollbar")
require("darcula-dark.illuminate")
require("darcula-dark.lazy")
require("darcula-dark.trouble")
require("darcula-dark.nvim-tree")

local lualine_theme = require("darcula-dark.lualine")
require("lualine").setup({
  options = {
    theme = lualine_theme,
  },
})
