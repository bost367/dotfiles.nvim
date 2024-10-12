local opt = vim.opt
local cmd = vim.cmd

-- file formats
opt.encoding = "utf-8"
opt.autoread = true
opt.fileformat = "unix" -- File mode is unix
opt.fileformats = "unix,dos,mac" -- File mode detect order

-- indentation
local indent = 4
opt.tabstop = indent -- Number of spaces a tab counts for
opt.shiftwidth = indent -- Number of spaces to use for each step of (auto)indent.
opt.expandtab = true -- Use the spaces to insert a <Tab>
opt.shiftround = true -- Round indent to multiple of 'shiftwidth'
opt.smartindent = true

opt.wrap = false -- Disable line wrpping
opt.colorcolumn = "120" --  Set row width size in charcters
opt.spelllang = { "en_us", "ru" }

-- cursor
opt.cursorline = true
opt.ruler = true -- Show cursor position in status bar
opt.scrolloff = 5

-- line number
opt.number = true
opt.numberwidth = 3
opt.fillchars = { eob = " " } -- Remove '~' character on empty line

opt.clipboard = "unnamedplus" -- Enable OS buffer
opt.cmdheight = 0 -- Hide current mode from command line
cmd("syntax enable") -- Syntax highlighting
cmd("filetype plugin indent on") -- Try to recognize filetypes and load rel' plugins

-- colour pallete
opt.termguicolors = true -- Enable true colors
vim.diagnostic.config({
  underline = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
})
