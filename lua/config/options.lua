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

-- ignorecase search
opt.ignorecase = true -- Enable ignore case for searching
opt.smartcase = true -- Enable smart case for cearching (type uupercase while search to enable)

opt.winborder = "rounded" -- Make every window rounded
opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
opt.clipboard = "unnamedplus" -- Enable OS buffer
opt.cmdheight = 0 -- Hide current mode from command line
opt.updatetime = 250 -- Delay microseconds (e.g for pop up appearance)
opt.fillchars:append({
  diff = " ", -- Repalce '-' caracter for diff
  eob = " ", -- Replace '~' character on empty lines in number lines column
})
cmd("filetype plugin indent on") -- Try to recognize filetypes and load rel' plugins

-- colour pallete
opt.termguicolors = true -- Enable true colors
cmd("syntax enable") -- Syntax highlighting
cmd.colorscheme("darcula-dark")

-- disable netrw plugin (builtin filemanager)
-- WARNING: Disabling netrw might cause issues with other plugins or
-- functionalities that rely on it, such as opening tar files or remote filesystems.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({
  severity_sort = true,
  underline = true,
  virtual_text = true,
  float = {
    source = true,
    border = "rounded",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
})
