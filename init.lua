-- Setup <leader> key. Setup must be done before Lazy loading.
vim.keymap.set("", "<Space>", "<Nop>") -- diable default <Space> behavior:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.commands")
