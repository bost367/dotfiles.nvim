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
--       syntax match RustDocSlashes "^\s*\zs///\ze" conceal cchar=┃
--     ]])
--   end,
-- })
