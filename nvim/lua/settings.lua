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

cmd 'syntax enable' -- syntax highlighting
cmd 'filetype plugin indent on' -- try to recognize filetypes and load rel' plugins

-- colour pallete

local colors = {
  black    = '#1E2022',
  blue     = '#375FAD',
  green    = '#549159',
  red      = '#ec5f67',
  cyan     = '#008080',
}

opt.termguicolors = true -- Enable true colors
cmd.colorscheme("darcula-dark")

-- colors overriding
hi(0, "CursorLine", { bg = "#26282E", ctermbg = 1 })
hi(0, "ColorColumn", { bg = "#393B40", ctermbg = 1 })
hi(0, "Normal", { bg = "#1E2022", ctermbg = 1 })
hi(0, "LineNr", { fg = "#474B54" })
hi(0, "CursorLineNr", { fg = "#A0A2AA" })
hi(0, "SignColumn", { fg = colors.red })

-- gitsign
hi(0, "GitGutterAdd", { fg = colors.green })
hi(0, "GitGutterChange", { fg = colors.blue })
hi(0, "GitGutterChangeDelete", { fg = colors.red })
hi(0, "GitGutterDelete", { fg = colors.red })

-- scrollbar
hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = colors.green })
