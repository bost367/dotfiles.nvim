require("darcula-dark.blink-cmp")
require("darcula-dark.diffview")
require("darcula-dark.fzf-lua")
require("darcula-dark.gitsigns")
require("darcula-dark.lazy")
require("darcula-dark.lsp")
local lualine_theme = require("darcula-dark.lualine")
require("darcula-dark.mason")
require("darcula-dark.nvim-cmp")
require("darcula-dark.nvim-scrollbar")
require("darcula-dark.nvim-tree")
require("darcula-dark.nvim-treesitter")
require("darcula-dark.vim-illuminate")
require("darcula-dark.theme")
require("darcula-dark.trouble")

require("lualine").setup({
  options = {
    theme = lualine_theme,
  },
})
