require("darcula-dark.theme")
require("darcula-dark.treesitter")
require("darcula-dark.lsp")
require("darcula-dark.cmp")
require("darcula-dark.gitsigns")
require("darcula-dark.scrollbar")

local lualine_theme = require("darcula-dark.lualine")
require("lualine").setup {
    options = {
        theme = lualine_theme
    }
}

