-- Setup <leader> key. Setup must be done before Lazy loading.
vim.keymap.set("", "<Space>", "<Nop>") -- diable default <Space> behavior:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.commands")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "rust",
--   callback = function()
--     vim.opt_local.conceallevel = 2
--     vim.opt_local.concealcursor = "nc"
--
--     vim.cmd([[
--       " Скрываем ///
--       syntax match RustDocSlashes "^\s*\zs///\ze" conceal cchar=│
--
--       " Заголовки - ключевое отличие: используем containedin
--       syntax match RustDocH1Marker "\(^\s*///\s*\)\@<=#\s\+" conceal contained
--       syntax match RustDocH1 "^\s*///\s*#\s\+.*$" contains=RustDocSlashes,RustDocH1Marker
--
--       syntax match RustDocH2Marker "\(^\s*///\s*\)\@<=##\s\+" conceal contained
--       syntax match RustDocH2 "^\s*///\s*##\s\+.*$" contains=RustDocSlashes,RustDocH2Marker
--
--       syntax match RustDocH3Marker "\(^\s*///\s*\)\@<=###\s\+" conceal contained
--       syntax match RustDocH3 "^\s*///\s*###\s\+.*$" contains=RustDocSlashes,RustDocH3Marker
--
--       syntax match RustDocH4Marker "\(^\s*///\s*\)\@<=####\s\+" conceal contained
--       syntax match RustDocH4 "^\s*///\s*####\s\+.*$" contains=RustDocSlashes,RustDocH4Marker
--
--       highlight RustDocH1 gui=bold guifg=#e06c75 cterm=bold ctermfg=204
--       highlight RustDocH2 gui=bold guifg=#e5c07b cterm=bold ctermfg=180
--       highlight RustDocH3 gui=bold guifg=#61afef cterm=bold ctermfg=75
--       highlight RustDocH4 gui=bold guifg=#98c379 cterm=bold ctermfg=114
--     ]])
--   end,
-- })
