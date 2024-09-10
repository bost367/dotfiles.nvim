require("config.lazy")
require("settings")
require("keymaps")
require('ibl').setup({
    indent = { char = "│" },
})
require('gitsigns').setup()

local lualine_theme = require("lualine_theme")
require("lualine").setup({
    options = {
        theme = lualine_theme
    },
    sections = { 
        lualine_b = {
            { 'branch', icon = ' ' },
        },
        lualine_c = {
            {
                'diff',
                symbols = {added = ' ', modified = ' ', removed = ' '},
            },
            { 
                'diagnostics',
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
            }
        },
        lualine_x = {
            {
                'filename',
                symbols = {modified = '●', readonly = ''},
            }, 
            'encoding', 'fileformat', 'filetype'
        },
    }
})
require("scrollbar").setup({
    handle = {
        color = "#808080"
    },
    handlers = {
        gitsigns = true
    }
})
require('nvim-treesitter.configs').setup({
    ensure_installed = { 
        "c", 
        "lua", 
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "rust",
        "kotlin", 
        "java", 
    },
    highlight = {
        enable = true,
    },
})

