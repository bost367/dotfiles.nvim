local opt = vim.opt 
local cmd = vim.cmd
local hi = vim.api.nvim_set_hl

-- fileformats
opt.encoding='utf-8'
opt.autoread=true
opt.fileformat='unix' --File mode is unix
opt.fileformats='unix,dos,mac' -- File mode detect order 

-- indentation 
local indent = 4 
opt.tabstop = indent -- Number of spaces a tab counts for
opt.shiftwidth = indent -- Number of spaces to use for each step of (auto)indent.
opt.expandtab = true -- Use the spaces to insert a <Tab>
opt.shiftround = true -- Round indent to multiple of 'shiftwidth'
opt.smartindent = true

opt.wrap = false -- Disable line wrpping
opt.colorcolumn = '120' --  set row width size in charcters
opt.spelllang= { 'en_us', 'ru' }
opt.spell = true

-- cursor
opt.cursorline = true
opt.ruler = true  -- Show cursor position in status bar
opt.scrolloff = 5

-- line number 
opt.number = true
opt.numberwidth = 2

opt.clipboard = "unnamedplus" -- Enable OS buffer
opt.cmdheight = 0 -- Hide current mode from command line 

cmd 'syntax enable' -- syntax highlighting
cmd 'filetype plugin indent on' -- try to recognize filetypes and load rel' plugins

-- colour pallete
opt.termguicolors = true -- Enable true colors
cmd.colorscheme("darcula-dark")
local palette = require 'palette'

-- colors overriding
hi(0, "CursorLine", { bg = "#26282E", ctermbg = 1 })
hi(0, "ColorColumn", { bg = "#393B40", ctermbg = 1 })
hi(0, "Normal", { bg = "#1E2022", ctermbg = 1 })
hi(0, "LineNr", { fg = "#474B54" })
hi(0, "CursorLineNr", { fg = "#A0A2AA" })

-- gitsign
hi(0, "GitGutterAdd", { fg = palette.editor.vcs.added_line })
hi(0, "GitGutterChange", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterChangeDelete", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterDelete", { fg = palette.editor.vcs.deleted_line })

-- scrollbar
hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = palette.editor.vcs.added_line })

-- code
hi(0, "TSString", { fg = palette.lang.default.str })
hi(0, "TSKeyword", { fg = palette.lang.default.keyword })
hi(0, "TSKeywordFunction", { fg = palette.lang.default.keyword })
hi(0, "TSNumber", { fg = palette.lang.default.digit })
hi(0, "TSType", { fg = palette.lang.default.text })
hi(0, "TSFunction", { fg = palette.lang.default.function_declaration })
hi(0, "TSFunctionCall", { fg = palette.lang.default.function_call })
hi(0, "TSConstant", { fg = palette.lang.default.constant })
hi(0, "TSFuncMacro", { fg = palette.lang.default.metadata })
--hi(0, "TSConstMacro", { fg = palette.lang.default.metadata })
--hi(0, "TSField", { fg = palette.lang.default.metadata })
--hi(0, "TSProperty", { fg = palette.lang.default.metadata })
--hi(0, "TSTag", { fg = palette.lang.default.metadata })

