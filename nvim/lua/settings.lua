local opt = vim.opt 
local cmd = vim.cmd

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

-- colour pallete
opt.termguicolors = true -- Enable true colors
cmd.colorscheme("darcula-dark")
cmd 'hi CursorLine guibg=#404040'

cmd 'syntax enable' -- syntax highlighting
cmd 'filetype plugin indent on' -- try to recognize filetypes and load rel' plugins
