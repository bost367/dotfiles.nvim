local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- custom binding
map("n", "gh", "0", default_opts)
map("x", "gh", "0", default_opts)
map("n", "gl", "$", default_opts)
map("x", "gl", "$", default_opts)

