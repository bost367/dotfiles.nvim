require("darcula-dark.theme")

local lualine_theme = require("darcula-dark.lualine")
require("lualine").setup {
    options = {
        theme = lualine_theme 
    }
}

