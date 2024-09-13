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
opt.colorcolumn = '120' --  Set row width size in charcters
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

cmd 'syntax enable' -- Syntax highlighting
cmd 'filetype plugin indent on' -- Try to recognize filetypes and load rel' plugins

-- colour pallete
opt.termguicolors = true -- Enable true colors
cmd.colorscheme("darcula-dark")
local palette = require 'palette'

-- custom 
hi(0, "StaticFunction", { fg = palette.lang.default.function_decaration, italic = true })

-- colors overriding
hi(0, "CursorLine", { bg = "#26282E", ctermbg = 1 })
hi(0, "ColorColumn", { bg = "#393B40", ctermbg = 1 })
hi(0, "Normal", { bg = palette.editor.background, ctermbg = 1 })
hi(0, "LineNr", { fg = "#474B54" })
hi(0, "CursorLine", { bg = palette.editor.cursor_lne})
hi(0, "CursorLineNr", { bg = palette.editor.cursor_lne})
hi(0, "Visual", { bg = palette.editor.select })

-- gitsign
hi(0, "GitGutterAdd", { fg = palette.editor.vcs.added_line })
hi(0, "GitGutterChange", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterChangeDelete", { fg = palette.editor.vcs.changed_line })
hi(0, "GitGutterDelete", { fg = palette.editor.vcs.deleted_line })

-- scrollbar
hi(0, "ScrollbarGitAdd", { ctermfg = 0, fg = palette.editor.vcs.added_line })

-- tree-sitter. use :h `treesitter-highlight-groups` to see all groupd
hi(0, "@method", { fg = palette.lang.default.function_decaration })
hi(0, "@method.call", { fg = palette.lang.default.function_call })
hi(0, "@function", { fg = palette.lang.default.function_decaration })
hi(0, "@function.call", { fg = palette.lang.default.function_call })
hi(0, "@function.macro", { fg = "#FFC66D" })
hi(0, "@constant", { fg = palette.lang.default.constant, italic = true })
hi(0, "@constant.builtin", { fg = palette.lang.default.constant, italic = true })
hi(0, "@type", { fg = palette.lang.default.text })
hi(0, "@module", { fg = palette.lang.default.text })
hi(0, "@label", { fg = palette.lang.default.label })
hi(0, "@operator", { fg = palette.lang.default.text })
hi(0, "@keyword", { fg = palette.lang.default.keyword })
hi(0, "@keyword.operator", { fg = palette.lang.default.keyword })
hi(0, "@attribute", { fg = "#20999D" })
hi(0, "@boolean", { fg = palette.lang.default.keyword })
hi(0, "@keyword.function", { fg = palette.lang.default.keyword })
hi(0, "@keyword.return", { fg = palette.lang.default.keyword })
hi(0, "@variable.builtin", { fg = palette.lang.default.keyword })
hi(0, "@variable.parameter", { fg = palette.lang.default.local_variable })
hi(0, "@variable.parameter.builtin", { fg = palette.lang.default.local_variable })
hi(0, "@variable.member", { fg = palette.lang.default.constant })
hi(0, "@type.builtin", { fg = palette.lang.default.struct })
hi(0, "@string", { fg = palette.lang.default.str })
hi(0, "@character", { fg = palette.lang.default.str })
hi(0, "@number", { fg = palette.lang.default.digit })
hi(0, "@number.float", { fg = palette.lang.default.digit })
hi(0, "@punctuation.delimiter", { fg = palette.lang.default.text })

-- lsp. use `:h lsp-semantic-highlight` to see all tokens 
hi(0, "@lsp.type.struct", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.class", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.macro", { fg = "#FFC66D" })
hi(0, "@lsp.type.decorator", { fg = palette.lang.default.metainfo })
hi(0, "@lsp.type.method", { fg = palette.lang.default.function_call })
hi(0, "@lsp.typemod.method.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.typemod.function.declaration", { fg = palette.lang.default.function_decaration })
hi(0, "@lsp.type.function", { fg = palette.lang.default.function_call })
hi(0, "@lsp.type.number", { fg = palette.lang.default.digit })
hi(0, "@lsp.type.namespace", { fg = palette.lang.default.text })
hi(0, "@lsp.type.parameter", { fg = palette.lang.default.text })
hi(0, "@lsp.type.property", { fg = palette.lang.default.constant })
hi(0, "@lsp.type.variable", { fg = palette.lang.default.local_variable })
hi(0, "@lsp.type.keyword", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.enumMember", { fg = palette.lang.default.constant, italic = true })
hi(0, "@lsp.type.enum", { fg = palette.lang.default.struct })
hi(0, "@lsp.type.typeParameter", { fg = palette.lang.default.generic })
hi(0, "@lsp.type.formatSpecifier", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.operator", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.builtinType", { fg = palette.lang.default.keyword })
hi(0, "@lsp.type.label", { fg = palette.lang.default.label })

vim.api.nvim_create_autocmd("LspTokenUpdate", {
  callback = function(args)
    local token = args.data.token
    if token.type == "function" and token.modifiers.static then
      vim.lsp.semantic_tokens.highlight_token(
        token, args.buf, args.data.client_id, "StaticFunction")
    end
  end,
})

-- Rust
hi(0, "@lsp.type.lifetime.rust", { fg = palette.lang.rust.lifetime })

-- cmp
hi(0, "Pmenu", { bg = palette.interface.background })
hi(0, "PmenuSel", {  bg = palette.interface.cursor_line})
