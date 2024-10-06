-- :help key-notation
local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- custom binding
map("n", "gh", "0", default_opts)
map("n", "gl", "$", default_opts)
map("x", "gh", "0", default_opts)
map("x", "gl", "$", default_opts)

map("n", "<D-l>", ":Format <CR>", default_opts)

-- cmp
local cmp = require("cmp")
map("i", "<C-k>", cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), default_opts)
map("i", "<C-j>", cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), default_opts)
map("i", "<C-Space>", cmp.mapping.complete(), default_opts)
map("i", "<C-e>", cmp.mapping.abort(), default_opts)
map("i", "<CR>", cmp.mapping.confirm({ select = true }), default_opts)
