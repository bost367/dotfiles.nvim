require("config.lazy")
require("settings")
require("keymaps")
require('ibl').setup()
require('gitsigns').setup()
require("lualine").setup({
    sections = { 
        lualine_b = {
            { 'branch', icon = ' ' },
            {
                'diff',
                symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            },
        }  
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



