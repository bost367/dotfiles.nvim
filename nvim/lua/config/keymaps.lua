-- :help key-notation
local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- custom binding
map("n", "gh", "0", default_opts)
map("n", "gl", "$", default_opts)
map("x", "gh", "0", default_opts)
map("x", "gl", "$", default_opts)

map("n", "<C-l>", ":Format <CR>", default_opts)

-- bufferline
map("n", "L", ":BufferLineCycleNext <CR>", default_opts)
map("n", "H", ":BufferLineCyclePrev <CR>", default_opts)
map("n", "<C-w>", ":bd<CR>", default_opts)
